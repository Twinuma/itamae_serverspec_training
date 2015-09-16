# ひとつひとつ指定する場合
# package 'httpd'

# 複数まとめて指定する場合
%w(httpd vim tree git dstat php php-devel php-mbstring php-gd).each do |pkg|
  package pkg
end
