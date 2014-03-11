module TBK
  module Webpay
    class Payment
      def initialize env = nil
        @@config ||= TBK::Webpay::Config.new(env)
      end

      def pay tbk_total_price, order_id, session_id
        tbk_params = {
          'TBK_TIPO_TRANSACCION' => 'TR_NORMAL',
          'TBK_MONTO' => tbk_total_price,
          'TBK_ORDEN_COMPRA' => order_id,
          'TBK_ID_SESION' => session_id,
          'TBK_URL_FRACASO' => webpay_failure_url,
          'TBK_URL_EXITO' => webpay_success_url
        }

        cgi_url = '#{@@config.tbk_webpay_cgi_base_url}/tbk_bp_pago.cgi'

        tbk_string_params = ""

        tbk_params.each do |key, value|
          tbk_string_params += "#{key}=#{value}&"
        end

        result = RestClient.post cgi_url, tbk_string_params
      end
    end
  end
end