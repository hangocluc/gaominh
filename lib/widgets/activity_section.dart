import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_qr/screens/activity_detail_screen.dart';

class ActivityItem {
  final String title;
  final String date;
  final String month;
  final String description;
  final String imageUrl;
  final String content;

  ActivityItem({
    required this.title,
    required this.date,
    required this.month,
    required this.description,
    required this.imageUrl,
    required this.content,
  });
}

class ActivitySection extends StatelessWidget {
  ActivitySection({super.key});

  final List<ActivityItem> activities = [
    ActivityItem(
      title: 'TT Plywood Ngày Hội Thao và Tiệc Tất Niên 2024',
      date: '02',
      month: 'T01',
      description:
          'Buổi tiệc cuối năm không chỉ là một sự kiện, mà còn là lời cảm ơn chân thành và một lễ hội tri ân những con người đã góp phần tạo nên TT ...',
      imageUrl: 'assets/images/product1.png',
      content: '''
Buổi tiệc cuối năm không chỉ là một sự kiện, mà còn là lời cảm ơn chân thành và một lễ hội tri ân những con người đã góp phần tạo nên TT Plywood như ngày hôm nay.

Năm 2023 đã khép lại với nhiều thành công và thách thức. TT Plywood đã tổ chức buổi tiệc tất niên để tổng kết một năm làm việc hiệu quả và chào đón năm mới 2024 với nhiều kỳ vọng mới.

Buổi tiệc diễn ra trong không khí ấm cúng, vui vẻ với sự tham gia của toàn thể cán bộ nhân viên công ty. Đây là dịp để mọi người cùng nhìn lại chặng đường đã qua, cùng chia sẻ những kỷ niệm đẹp và hướng đến những mục tiêu mới trong năm 2024.
      ''',
    ),
    ActivityItem(
      title: 'Bí Quyết Chọn Độn Ván Ép Bao Bì?',
      date: '20',
      month: 'T12',
      description:
          'Lõi ván ép đóng gói quyết định độ bền, sức mạnh và tính linh hoạt. Lõi Keo phù hợp với hàng nặng, Lõi Styrax nhẹ và tiết kiệm chi phí, Lõ...',
      imageUrl: 'assets/images/product2.png',
      content: '''
Lõi ván ép đóng gói quyết định độ bền, sức mạnh và tính linh hoạt của sản phẩm. Có nhiều loại lõi khác nhau để lựa chọn:

1. Lõi Keo:
- Phù hợp với hàng nặng
- Độ bền cao
- Chịu lực tốt
- Giá thành cao hơn

2. Lõi Styrax:
- Nhẹ và tiết kiệm chi phí
- Phù hợp với hàng nhẹ
- Dễ gia công
- Giá thành hợp lý

3. Lõi hỗn hợp:
- Kết hợp ưu điểm của các loại lõi
- Cân bằng giữa chi phí và chất lượng
- Linh hoạt trong sử dụng

Việc lựa chọn loại lõi phụ thuộc vào:
- Trọng lượng hàng hóa
- Yêu cầu về độ bền
- Ngân sách
- Điều kiện sử dụng
      ''',
    ),
    ActivityItem(
      title: 'Xu hướng mới trong ngành ván ép',
      date: '31',
      month: 'T10',
      description:
          'Ngành ván ép đang chứng kiến sự thay đổi nhanh chóng với nhiều xu hướng mới nổi, phản ánh sự phát triển của công nghệ, nhu cầu thị trường...',
      imageUrl: 'assets/images/product3.png',
      content: '''
Ngành ván ép đang chứng kiến sự thay đổi nhanh chóng với nhiều xu hướng mới nổi, phản ánh sự phát triển của công nghệ và nhu cầu thị trường. Một số xu hướng chính:

1. Vật liệu thân thiện môi trường:
- Sử dụng keo dán không formaldehyde
- Gỗ từ nguồn bền vững
- Quy trình sản xuất xanh

2. Công nghệ sản xuất tiên tiến:
- Tự động hóa quy trình
- Kiểm soát chất lượng bằng AI
- Tối ưu hóa sử dụng nguyên liệu

3. Đa dạng hóa sản phẩm:
- Ván ép siêu mỏng
- Ván ép chống cháy
- Ván ép trang trí cao cấp

4. Ứng dụng mới:
- Nội thất thông minh
- Xây dựng xanh
- Bao bì cao cấp
      ''',
    ),
    // Thêm các hoạt động khác tương tự
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hoạt Động',
            style: GoogleFonts.roboto(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 30),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: activities.length,
            itemBuilder: (context, index) {
              return ActivityCard(activity: activities[index]);
            },
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final ActivityItem activity;

  const ActivityCard({
    super.key,
    required this.activity,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActivityDetailScreen(activity: activity),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                activity.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            Text(
                              activity.month,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              activity.date,
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          activity.title,
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    activity.description,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
