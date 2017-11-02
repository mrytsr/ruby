module RubyHelper

  def eval_script filename, arguments=nil
    eval_script_method filename, nil, arguments
  end

  def eval_script_method filename, method = nil, arguments = nil



    # proc = Proc.new { }
    # file = File.read(filename)
    # file1 = File.read(filename.sub(/.rb$/,".test.rb"))
    # # file<<"\n#{method.to_s}" if method
    # file << "\n"
    # file << file1
    # file << "\n"
    # file << "puts result.join"
    # binding.pry
    result = `ruby #{filename.sub(/.rb$/,".test.rb")}`
    result = "__无法编译运行，请重新编辑__" unless $?.success?
    result
    # eval(file, proc.binding, filename)
  end
  
  def run_test_by_filename filename
    filename = File.expand_path("#{filename}.rb", 'exam')
    if File.exists?(filename)
       result = eval_script_method(filename)
       markdown result.to_s
    else
      'File not found'
    end
  end
end
