describe Table do
  describe 'should refuse invalid parameters' do
    [-1, 0].each do |width|

      it "raise error when width is #{width}" do
        begin
          Table.new(width, 1)
          fail
        rescue RuntimeError => e
          expect(e.message).to eq('invalid width')
        end
      end
    end

    [-1, 0].each do |height|

      it "raise error when height is #{height}" do
        begin
          Table.new(1, height)
          fail
        rescue RuntimeError => e
          expect(e.message).to eq('invalid height')
        end
      end
    end

  end
end