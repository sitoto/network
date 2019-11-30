require 'mail'
Mail.defaults do
  delivery_method :smtp, {
    :port      => 80,
    :address   => "smtpdm.aliyun.com",
    :user_name => "xxx@xxx.com",  
    :password  => "xxx",
    :enable_starttls_auto => false,
    :openssl_verify_mode => 'none',
  }
end
#  DISCOURSE_SMTP_ADDRESS: smtpdm.aliyun.com
#  DISCOURSE_SMTP_PORT: 80                       # (optional, default 587)
#  DISCOURSE_SMTP_USER_NAME: xxx@xxx.com
#  DISCOURSE_SMTP_PASSWORD: xxx

mail = Mail.deliver do
  to      'xxx@xxx.com'
  from    'xxx@xxx.com'
  subject 'Hello xxx'
  text_part do
    body 'Testing mail'
  end
end
