
class Node {
    constructor(title,yes_node, no_node){
        this.title = title;
        this.yes_node = yes_node;
        this.no_node = no_node;
    }
}

let end_not_sick = new Node("Không phải sốt xuất huyết, điều trị tại nhà", null, null)
let not_positive = new Node("Không dương tính với sốt xuất huyết \n Giảm từng mức việc cách ly cho đến khi có kết quả kiểm tra mới",null,null)
let positive = new Node("Dương tính với sốt xuất huyết \n - Thực hiện cách ly bệnh nhân \n - Thông báo cho phòng thí nhiệm nếu cần các bài test khác",null,null)
let positive_vhf =  new Node("Dương tính với sốt xuất huyết ?",positive,not_positive)

let yes_out_patient = new Node("Thông tin cho các cơ quan sức khỏe địa phương \n - Đảm bảo thông tin liên lạc của bệnh nhân đầy đủ \n - Yêu cầu bệnh nhân tự cách lý \n - Xem kết quả xét nhiệm sốt xuất huyết dương tính hay không ",positive_vhf,not_positive)

let can_out_patient = new Node("Bệnh nhân có phù hơp để điều trị ngoại trú không ?",yes_out_patient,positive_vhf)

let manage_like_malaria = new Node("Điều trị như sốt xuất huyết \n - Có mối quan tâm lâm sàng hoặc sốt liên tục trong 72 giờ ?",can_out_patient,end_not_sick)
let if_alternative = new Node("Bệnh nhân có kết quả xét nhiệm khác không ?",end_not_sick,manage_like_malaria)
let if_positive_malaria = new Node("Bệnh nhân có dương tính với số rét ?",manage_like_malaria,if_alternative)  

let if_bleeding_or_bruising = new Node("Bệnh nhân có bị thâm tím hoặc chảy máu không ?",if_positive_malaria,manage_like_malaria)

let if_return_from_epidemic = new Node("Người bệnh có trở về từ vùng bị dịch sốt xuất huyết hay không ?",if_bleeding_or_bruising,manage_like_malaria)

let high_posibility = new Node("Khả năng nhiễm bệnh cao \n - Cách ly bệnh nhân tại phòng bệnh riêng \n - Xét nhiệm công thức máu, đường huyết,  Yếu tố đông máu, Protein C-reactive, Chức năng gan, Urê, Điện giải đồ, Nuôi cấy \n - Thông báo cho phòng xét nhiệm về khả năng bị sốt xuất huyết \n - Dương tính với sốt rét ?",if_return_from_epidemic, manage_like_malaria)



let if_expose_to_sick_creture = new Node("Bệnh nhân có tiếp xúc với dịch cơ thể (ví dụ: máu, nước tiểu,...) của cá nhân hoặc động vật có nguy cơ bị sốt xuất huyết trong vòng 21 ngày hay không ?",high_posibility ,end_not_sick)
let predict_vhf = new Node("- Thảo luận với cố vấn nhiễm trùng \n -Thông báo cho cơ quan y tế địa phương \n- Cân nhắc sử dùng kháng sinh \n - Bệnh nhân có các vết bầm tím, chảy máu thường xuyên, tiêu chảy hoặc nôn không kiểm soát ?",positive_vhf,can_out_patient)

let if_stay_at_outbreak_country = new Node("Bệnh nhân có đi qua hay ở lại các vùng xảy ra dịch hay không ?",high_posibility,end_not_sick)
let if_visit_endemic_country = new Node("Bệnh nhân có triệu chứng gì trong vòng 21 ngày từ ngày rời khỏi vùng có khả năng có dịch hay không ?",if_stay_at_outbreak_country,if_expose_to_sick_creture)
let start_node = new Node("Bệnh nhân có đang sốt trên 37.5 độ C hoặc đã sốt trong vòng 24h",if_visit_endemic_country,end_not_sick)


class Tree {
    constructor(){
        this.node = start_node;
    }

    Yes(){
        this.node = this.node.yes_node
    }

    No(){
        this.node = this.node.no_node
    }
    Text(){
        return this.node.title;
    }
    IsEnd(){
        return this.node.yes_node === null || this.node.no_node === null;
    }
}

