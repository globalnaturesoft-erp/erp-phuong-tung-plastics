module Erp
  module PhuongTungPlastics
    module Frontend
      class ContactController < Erp::Frontend::FrontendController
        def index
          if params[:contact].present?
            @contact = Erp::Contacts::Contact.new(contact_params)
            @contact.contact_type = Erp::Contacts::Contact::TYPE_PERSON
            if @contact.save and params[:msg].present?
              @msg = Erp::Contacts::Message.new(message_params)
              @msg.contact_id = @contact.id
              # @todo get email receive contact
              @msg.to_contact_id = Erp::Contacts::Contact.first.id
              respond_to do |format|
                if @msg.save
                  #Erp::Contacts::ContactMailer.sending_email_contact(@msg).deliver_now
                  format.html {
                    redirect_to :back, notice: 'Yêu cầu đã gửi thành công. Chúng tôi sẽ liên hệ cho bạn trong thời gian sớm nhất.'
                  }
                end
              end
            else
              redirect_to :back, flash: { error: 'Xin lỗi! Nội dung tin nhắn không thể gửi. Vui lòng kiểm tra lại thông tin đã nhập.' }
            end
          end
        end
        
        private
          def contact_params
            params.fetch(:contact, {}).permit(:name, :email, :phone)
          end
          
          def message_params
            params.fetch(:msg, {}).permit(:message)
          end
          
      end
    end
  end
end