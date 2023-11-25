while true #プレイヤーがやめるまで繰り返し
    while true #ゲーム全体繰り返し
        while true #じゃんけん繰り返し
            while true #じゃんけん不正入力回避
                puts "じゃんけん..."
                puts "0 (グー) 1(チョキ) 2(パー) 3(戦わない)"

                player_choice = gets.chomp
                if player_choice != "0" && player_choice != "1" && player_choice != "2" && player_choice != "3"
                    puts "[0,1,2,3から選んでね]"
                else
                    break
                end
            end

            player_choice = player_choice.to_i
            opponent_choice = rand(2)

            case player_choice
            when 0
                puts "----------"
                puts "ぽい！"
                puts "----------"
                case opponent_choice
                when 0
                    puts "あなた:グー"
                    puts "あいて:グー"
                    puts "----------"
                    status = "draw"
                    break
                when 1
                    puts "あなた:グー"
                    puts "あいて:チョキ"
                    puts "----------"
                    status = "player_win"
                    break
                when 2
                    puts "あなた:グー"
                    puts "あいて:パー"
                    puts "----------"
                    status = "player_lose"
                    break
                end
            when 1
                puts "----------"
                puts "ぽい！"
                puts "----------"
                case opponent_choice
                when 0
                    puts "あなた:チョキ"
                    puts "あいて:グー"
                    puts "----------"
                    status = "player_lose"
                    break
                when 1
                    puts "あなた:チョキ"
                    puts "あいて:チョキ"
                    puts "----------"
                    status = "draw"
                    break
                when 2
                    puts "あなた:チョキ"
                    puts "あいて:パー"
                    puts "----------"
                    status = "player_win"
                    break
                end
            when 2
                puts "----------"
                puts "ぽい！"
                puts "----------"
                case opponent_choice
                when 0
                    puts "あなた:パー"
                    puts "あいて:グー"
                    puts "----------"
                    status = "player_win"
                    break
                when 1
                    puts "あなた:パー"
                    puts "あいて:チョキ"
                    puts "----------"
                    status = "player_lose"
                    break
                when 2
                    puts "あなた:パー"
                    puts "あいて:パー"
                    puts "----------"
                    status = "draw"
                    break        
                end
            when 3
                puts "----------"
                puts "またね！"
                status = "quit_game"
                break
            end
        end

        while status == "draw"  #あいこの時の繰り返し
            while true #あいこの時不正入力回避
                puts "あいこで..."
                puts "0 (グー) 1(チョキ) 2(パー) 3(戦わない)"

                player_choice = gets.chomp
                if player_choice != "0" && player_choice != "1" && player_choice != "2" && player_choice != "3"
                    puts "[0,1,2,3から選んでね]"
                else
                    break
                end
            end

            player_choice = player_choice.to_i
            opponent_choice = rand(2)

            case player_choice
            when 0
                puts "----------"
                puts "しょ！"
                puts "----------"
                case opponent_choice
                when 0
                    puts "あなた:グー"
                    puts "あいて:グー"
                    puts "----------"
                    status = "draw"                
                when 1
                    puts "あなた:グー"
                    puts "あいて:チョキ"
                    puts "----------"
                    status = "player_win"
                    break
                when 2
                    puts "あなた:グー"
                    puts "あいて:パー"
                    puts "----------"
                    status = "player_lose"
                    break
                end
            when 1
                puts "----------"
                puts "しょ！"
                puts "----------"
                case opponent_choice
                when 0
                    puts "あなた:チョキ"
                    puts "あいて:グー"
                    puts "----------"
                    status = "player_lose"
                    break
                when 1
                    puts "あなた:チョキ"
                    puts "あいて:チョキ"
                    puts "----------"
                    status = "draw"                
                when 2
                    puts "あなた:チョキ"
                    puts "あいて:パー"
                    puts "----------"
                    status = "player_win"
                    break
                end
            when 2
                puts "----------"
                puts "しょ！"
                puts "----------"
                case opponent_choice
                when 0
                    puts "あなた:パー"
                    puts "あいて:グー"
                    puts "----------"
                    status = "player_win"
                    break
                when 1
                    puts "あなた:パー"
                    puts "あいて:チョキ"
                    puts "----------"
                    status = "player_lose"
                    break
                when 2
                    puts "あなた:パー"
                    puts "あいて:パー"
                    puts "----------"
                    status = "draw"          
                end
            when 3
                puts "----------"
                puts "またね！"
                status = "quit_game"
                break
            end
        end
        
        #以下、あっち向いてホイ

        case status
        when "player_win"
            while true #あっち向いてホイの不正入力回避
                puts "あっちむいて〜..."
                puts "0 (上) 1(下) 2(左) 3(右)"
                player_direction = gets.chomp
                if player_direction != "0" && player_direction != "1" && player_direction != "2" && player_direction != "3"
                    puts "[0,1,2,3から選んでね]"
                else
                    break
                end
            end

            player_direction = player_direction.to_i
            opponent_direction = rand(3)
            puts "----------"
            puts "ほい！"
            puts "----------"

            case player_direction
            when 0
                case opponent_direction
                when 0
                    puts "あなた:上を指した"
                    puts "相手:上を向いた"
                    puts "-------------"
                    puts "あなたの勝ち！！"
                    break
                when 1
                    puts "あなた:上を指した"
                    puts "相手:下を向いた"
                    puts "-------------"
                when 2
                    puts "あなた:上を指した"
                    puts "相手:左を向いた"
                    puts "-------------"
                when 3
                    puts "あなた:上を指した"
                    puts "相手:右を向いた"
                    puts "-------------"
                end
            when 1
                case opponent_direction
                when 0
                    puts "あなた:下を指した"
                    puts "相手:上を向いた"
                    puts "-------------"
                when 1
                    puts "あなた:下を指した"
                    puts "相手:下を向いた"
                    puts "-------------"
                    puts "あなたの勝ち！！"
                    break
                when 2
                    puts "あなた:下を指した"
                    puts "相手:左を向いた"
                    puts "-------------"
                when 3
                    puts "あなた:下を指した"
                    puts "相手:右を向いた"
                    puts "-------------"
                end
            when 2
                case opponent_direction
                when 0
                    puts "あなた:左を指した"
                    puts "相手:上を向いた"
                    puts "-------------"
                when 1
                    puts "あなた:左を指した"
                    puts "相手:下を向いた"
                    puts "-------------"
                when 2
                    puts "あなた:左を指した"
                    puts "相手:左を向いた"
                    puts "-------------"
                    puts "あなたの勝ち！！"
                    break
                when 3
                    puts "あなた:左を指した"
                    puts "相手:右を向いた"
                    puts "-------------"
                end
            when 3
                case opponent_direction
                when 0
                    puts "あなた:右を指した"
                    puts "相手:上を向いた"
                    puts "-------------"
                when 1
                    puts "あなた:右を指した"
                    puts "相手:下を向いた"
                    puts "-------------"
                when 2
                    puts "あなた:右を指した"
                    puts "相手:左を向いた"
                    puts "-------------"
                when 3
                    puts "あなた:右を指した"
                    puts "相手:右を向いた"
                    puts "-------------"
                    puts "あなたの勝ち！！"
                    break
                end
            end
        when "player_lose"
            puts "あっちむいて〜..."
            while true #あっち向いてホイの不正入力回避
                puts "0 (上) 1(下) 2(左) 3(右)"
                player_direction = gets.chomp
                if player_direction != "0" && player_direction != "1" && player_direction != "2" && player_direction != "3"
                    puts "[0,1,2,3から選んでね]"
                else
                    break
                end
            end

            player_direction = player_direction.to_i
            opponent_direction = rand(3)

            puts "----------"
            puts "ほい！"
            puts "----------"

            case player_direction
            when 0
                case opponent_direction
                when 0
                    puts "あなた:上を向いた"
                    puts "相手:上を指した"
                    puts "-------------"
                    puts "あなたの負け！！"
                    break
                when 1
                    puts "あなた:上を向いた"
                    puts "相手:下を指した"
                    puts "-------------"
                when 2
                    puts "あなた:上を向いた"
                    puts "相手:左を指した"
                    puts "-------------"
                when 3
                    puts "あなた:上を向いた"
                    puts "相手:右を指した"
                    puts "-------------"
                end
            when 1
                case opponent_direction
                when 0
                    puts "あなた:下を向いた"
                    puts "相手:上を指した"
                    puts "-------------"
                when 1
                    puts "あなた:下を向いた"
                    puts "相手:下を指した"
                    puts "-------------"
                    puts "あなたの負け！！"
                    break
                when 2
                    puts "あなた:下を向いた"
                    puts "相手:左を指した"
                    puts "-------------"
                when 3
                    puts "あなた:下を向いた"
                    puts "相手:右を指した"
                    puts "-------------"
                end
            when 2
                case opponent_direction
                when 0
                    puts "あなた:左を向いた"
                    puts "相手:上を指した"
                    puts "-------------"
                when 1
                    puts "あなた:左を向いた"
                    puts "相手:下を指した"
                    puts "-------------"
                when 2
                    puts "あなた:左を向いた"
                    puts "相手:左を指した"
                    puts "-------------"
                    puts "あなたの負け！！"
                    break
                when 3
                    puts "あなた:左を向いた"
                    puts "相手:右を指した"
                    puts "-------------"
                end
            when 3
                case opponent_direction
                when 0
                    puts "あなた:右を向いた"
                    puts "相手:上を指した"
                    puts "-------------"
                when 1
                    puts "あなた:右を向いた"
                    puts "相手:下を指した"
                    puts "-------------"
                when 2
                    puts "あなた:右を向いた"
                    puts "相手:左を指した"
                    puts "-------------"
                when 3
                    puts "あなた:右を向いた"
                    puts "相手:右を指した"
                    puts "-------------"
                    puts "あなたの負け！！"
                    break
                end
            end
        else
            break
        end
    end

    if status != "quit_game"
        puts "----------"
        puts "もう一回やる？"
        puts "0(やる)1(やらない)"

        while true
            continue = gets.chomp
            if continue != "0" && continue != "1"
                puts "[0か1を選んでね]"
            else
                break
            end
        end

        continue = continue.to_i

        case continue
        when 0
            puts "------------"
            puts "よし、もう一回！"
            puts "------------"
        when 1
            puts "------------"
            puts "バイバイ！"
            break
        end
    else 
        break
    end
end