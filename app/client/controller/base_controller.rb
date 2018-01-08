module Client
  module Controller
    class BaseController
      # 如何实现自动render对应的view是个问题

      def method_missing(meth, *args, &blk)
        # TODO 能否将args变成实例变量，这样可以直接render，而不用添加参数
        caller_action = caller[0][/`.*'/][1..-2]
        if meth == :render
          View.const_get("#{self.class.to_s.demodulize.remove('Controller')}::#{caller_action.classify}").render(*args)
        else
          super
        end

      end

    end
  end
end