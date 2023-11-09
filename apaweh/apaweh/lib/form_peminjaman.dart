import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class formPeminjaman extends StatelessWidget {
  const formPeminjaman({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff475bd8)),
                borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration.collapsed(hintText: "Nama"),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff475bd8)),
                borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration.collapsed(hintText: "Kelas"),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff475bd8)),
                borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration.collapsed(hintText: "Nama Barang"),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            
              TextFormField(
              decoration: InputDecoration.collapsed(hintText: "Jumlah"),
              keyboardType: TextInputType.number,
              ),
              
            const SizedBox(
              height: 10,
            ),
            
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff475bd8)),
                borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: InputDecoration.collapsed(hintText: "Ruangan"),
              ),
            ),
            
            const SizedBox(
              height: 10,
            ),

            DateTime selectedDate;

            // Menampilkan DateTime Picker saat tombol ditekan
            Future<void> _selectDate(BuildContext context) async {
              final DateTime picked = await showDatePicker(
                context: context,
                initialDate: selectedDate ?? DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (picked != null && picked != selectedDate)
                setState(() {
                  selectedDate = picked;
                });
            }

            // Menampilkan tanggal yang dipilih
            TextButton(
              onPressed: () => _selectDate(context),
              child: Text(selectedDate != null
                  ? "Tanggal Peminjaman: ${DateFormat('yyyy-MM-dd').format(selectedDate)}"
                  : "Pilih Tanggal Peminjaman"),
            ),

                        const SizedBox(
                          height: 10,
                        ),
                        
                        TimeOfDay selectedTime;

            // Menampilkan Time Picker saat tombol ditekan
            Future<void> _selectTime(BuildContext context) async {
              final TimeOfDay picked = await showTimePicker(
                context: context,
                initialTime: selectedTime ?? TimeOfDay.now(),
              );
              if (picked != null && picked != selectedTime)
                setState(() {
                  selectedTime = picked;
                });
            }

            // Menampilkan waktu yang dipilih
            TextButton(
              onPressed: () => _selectTime(context),
              child: Text(selectedTime != null
                  ? "Waktu Peminjaman: ${selectedTime.format(context)}"
                  : "Pilih Waktu Peminjaman"),
            ),

                        const SizedBox(
                          height: 10,
                        ),

                        ImagePicker _imagePicker = ImagePicker();
            XFile _image;

            // Fungsi untuk mengunggah gambar
            Future<void> _pickImage() async {
              final XFile image = await _imagePicker.pickImage(source: ImageSource.gallery);
              if (image != null) {
                setState(() {
                  _image = image;
                });
              }
            }

            // Menampilkan gambar yang dipilih
            if (_image != null) {
              Image.file(File(_image.path));
            }

            // Tombol untuk memilih gambar
            TextButton(
              onPressed: _pickImage,
              child: Text(_image != null ? "Ubah Gambar" : "Pilih Gambar"),
            ),

                        const SizedBox(
                          height: 10,
                        ),

            ],
          ),
        ),
      ),
    );
  }
}
