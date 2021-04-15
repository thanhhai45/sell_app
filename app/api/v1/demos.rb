class V1::Demos < Grape::API
  resource :demos do
    desc 'demos'

    get do
      present 'hello'
    end
  end
end
