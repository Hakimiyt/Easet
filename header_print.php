<!-- Add these script tags right before the closing </body> tag -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>
<script>
function exportToWord() {
    try {
        const table = document.querySelector('.table');
        const html = `
            <html xmlns:o='urn:schemas-microsoft-com:office:office'
                  xmlns:w='urn:schemas-microsoft-com:office:word'
                  xmlns='http://www.w3.org/TR/REC-html40'>
                <head>
                    <meta charset='utf-8'>
                    <title>Senarai Aduan Pengguna</title>
                    <style>
                        @page {
                            size: A4 landscape;
                            margin: 1cm;
                            mso-page-orientation: landscape;
                        }
                        body {
                            margin: 0;
                            padding: 0;
                            width: 100%;
                        }
                        table {
                            width: 100%;
                            border-collapse: collapse;
                            table-layout: fixed;
                            font-size: 8pt;
                            font-family: Arial, sans-serif;
                        }
                        th {
                            background-color: #C4D7FF;
                            border: 1px solid black;
                            padding: 3px;
                            text-align: center;
                            font-weight: bold;
                            width: 10%;
                        }
                        td {
                            border: 1px solid black;
                            padding: 3px;
                            text-align: left;
                            vertical-align: top;
                            word-wrap: break-word;
                            width: 10%;
                        }
                        /* Specific column widths */
                        th:nth-child(1), td:nth-child(1) { width: 5%; }  /* Bil */
                        th:nth-child(2), td:nth-child(2) { width: 12%; } /* Kategori */
                        th:nth-child(3), td:nth-child(3) { width: 8%; }  /* Tarikh */
                        th:nth-child(4), td:nth-child(4) { width: 15%; } /* Nama Dan Jawatan */
                        th:nth-child(5), td:nth-child(5) { width: 10%; } /* Jenis Aset */
                        th:nth-child(6), td:nth-child(6) { width: 10%; } /* Nombor Siri */
                        th:nth-child(7), td:nth-child(7) { width: 10%; } /* Tempat Rosak */
                        th:nth-child(8), td:nth-child(8) { width: 10%; } /* Pengguna Terakhir */
                        th:nth-child(9), td:nth-child(9) { width: 10%; } /* Perihal Kerosakan */
                        th:nth-child(10), td:nth-child(10) { width: 10%; } /* Disahkan */

                        /* Header styling */
                        .header {
                            text-align: center;
                            margin-bottom: 10px;
                        }
                        h2 {
                            font-size: 12pt;
                            margin-bottom: 10px;
                            font-weight: bold;
                        }
                    </style>
                </head>
                <body>
                    <div class="header">
                        <h2>Senarai Aduan Pengguna</h2>
                    </div>
                    <table>
                        ${table.innerHTML}
                    </table>
                </body>
            </html>`;
        
        const blob = new Blob(['\ufeff', html], {
            type: 'application/msword'
        });
        const url = URL.createObjectURL(blob);
        const link = document.createElement('a');
        link.href = url;
        link.download = 'Senarai_Aduan_Pengguna.doc';
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
        URL.revokeObjectURL(url);
    } catch (error) {
        console.error('Error exporting to Word:', error);
        alert('Error exporting to Word. Please try again.');
    }
}

function exportToExcel() {
    try {
        const table = document.querySelector('.table');
        const wb = XLSX.utils.book_new();
        const ws = XLSX.utils.table_to_sheet(table);
        
        // Set column widths
        const cols = [
            { wch: 5 },  // Bil
            { wch: 15 }, // Kategori
            { wch: 12 }, // Tarikh
            { wch: 20 }, // Nama Dan Jawatan
            { wch: 15 }, // Jenis Aset
            { wch: 15 }, // Nombor Siri
            { wch: 15 }, // Tempat Rosak
            { wch: 15 }, // Pengguna Terakhir
            { wch: 15 }, // Perihal Kerosakan
            { wch: 15 }  // Disahkan
        ];
        
        ws['!cols'] = cols;
        
        // Set print settings for A4 Landscape
        ws['!print'] = {
            scale: 0.85, // Slightly reduced scale to ensure fitting
            paper: 9,    // A4
            orientation: true // landscape
        };

        // Set margins
        ws['!margins'] = {
            left: 0.5,
            right: 0.5,
            top: 0.5,
            bottom: 0.5,
            header: 0.3,
            footer: 0.3
        };

        XLSX.utils.book_append_sheet(wb, ws, "Senarai Aduan");
        XLSX.writeFile(wb, 'Senarai_Aduan_Pengguna.xlsx');
    } catch (error) {
        console.error('Error exporting to Excel:', error);
        alert('Error exporting to Excel. Please try again.');
    }
}
</script>