module Xmldsig
  class Transforms < Array
    class EnvelopedSignature < Transform
      def transform
        sig = node.xpath("descendant::ds:Signature", Xmldsig::NAMESPACES).first
        if not sig.nil?
          sig.remove
        end
        node
      end
    end
  end
end
