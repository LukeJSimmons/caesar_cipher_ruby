require './caesar_cipher'

describe '#caesar_cipher' do
    describe 'differing cases' do
        context 'when input is lowercase' do
            it 'equals ifmmp' do
                input = 'hello'
                result = caesar_cipher(input, 1)
                expect(result).to eq('ifmmp')
            end
        end

        context 'when input is upcase' do
            it 'equals Ifmmp' do
                input = 'Hello'
                result = caesar_cipher(input, 1)
                expect(result).to eq('Ifmmp')
            end
        end

        context 'when input is uppercase' do
            it 'equals IFMMP' do
                input = 'HELLO'
                result = caesar_cipher(input, 1)
                expect(result).to eq('IFMMP')
            end
        end
    end

    describe 'special characters' do
        context 'when input includes spaces' do
            it 'equals ifmmp xpsme' do
                input = 'hello world'
                result = caesar_cipher(input, 1)
                expect(result).to eq('ifmmp xpsme')
            end
        end

        context 'when input includes punctuation' do
            it 'equals ifmmp, xpsme!' do
                input = 'hello, world!'
                result = caesar_cipher(input, 1)
                expect(result).to eq('ifmmp, xpsme!')
            end
        end
    end

    context 'when cipher number is more than one' do
        it 'equals jgnnq yqtnf' do
            input = 'hello world'
            result = caesar_cipher(input, 2)
            expect(result).to eq('jgnnq yqtnf')
        end
    end
end