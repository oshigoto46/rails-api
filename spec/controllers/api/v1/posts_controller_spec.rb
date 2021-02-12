require 'spec_helper'

describe Api::V1::PostsController  do
    let(:posts) { create :post }
    #let(:post_attr){attributes_for :post}

    describe 'POST /posts # create' do
     context 'when parameters are correct' do
        before(:each) do
            post_attr = attributes_for :post
            STDOUT.puts (post_attr.inspect)
            STDOUT.puts ("hogehoghogeho")
            #post_attr[:body] = post.body
             post :create, params: { post: post_attr }
        end

        it 'routes correctly' do
            expect(post: '/posts').to route_to('api/v1/posts#create', format: :json)
        end
      end
    end
    

end



