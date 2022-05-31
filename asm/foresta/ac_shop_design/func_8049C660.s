lbl_8049C660:
/* 8049C660  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049C664  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049C668  3C 84 00 03 */	addis r4, r4, 3
/* 8049C66C  80 A4 88 9C */	lwz r5, -0x7764(r4)
/* 8049C670  2C 05 00 01 */	cmpwi r5, 1
/* 8049C674  40 82 00 10 */	bne lbl_8049C684
/* 8049C678  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE07@ha */
/* 8049C67C  38 63 FE 07 */	addi r3, r3, 0xFE07 /* 0x0000FE07@l */
/* 8049C680  4E 80 00 20 */	blr 
lbl_8049C684:
/* 8049C684  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C688  28 00 25 1E */	cmplwi r0, 0x251e
/* 8049C68C  40 82 00 10 */	bne lbl_8049C69C
/* 8049C690  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE0C@ha */
/* 8049C694  38 63 FE 0C */	addi r3, r3, 0xFE0C /* 0x0000FE0C@l */
/* 8049C698  4E 80 00 20 */	blr 
lbl_8049C69C:
/* 8049C69C  54 64 A7 3E */	rlwinm r4, r3, 0x14, 0x1c, 0x1f
/* 8049C6A0  2C 04 00 01 */	cmpwi r4, 1
/* 8049C6A4  41 82 00 0C */	beq lbl_8049C6B0
/* 8049C6A8  2C 04 00 03 */	cmpwi r4, 3
/* 8049C6AC  40 82 00 10 */	bne lbl_8049C6BC
lbl_8049C6B0:
/* 8049C6B0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE02@ha */
/* 8049C6B4  38 63 FE 02 */	addi r3, r3, 0xFE02 /* 0x0000FE02@l */
/* 8049C6B8  4E 80 00 20 */	blr 
lbl_8049C6BC:
/* 8049C6BC  28 00 FE 10 */	cmplwi r0, 0xfe10
/* 8049C6C0  40 82 00 10 */	bne lbl_8049C6D0
/* 8049C6C4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE02@ha */
/* 8049C6C8  38 63 FE 02 */	addi r3, r3, 0xFE02 /* 0x0000FE02@l */
/* 8049C6CC  4E 80 00 20 */	blr 
lbl_8049C6D0:
/* 8049C6D0  28 00 20 00 */	cmplwi r0, 0x2000
/* 8049C6D4  41 80 00 0C */	blt lbl_8049C6E0
/* 8049C6D8  28 00 21 00 */	cmplwi r0, 0x2100
/* 8049C6DC  40 81 00 18 */	ble lbl_8049C6F4
lbl_8049C6E0:
/* 8049C6E0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C6E4  28 00 2B 00 */	cmplwi r0, 0x2b00
/* 8049C6E8  41 80 00 18 */	blt lbl_8049C700
/* 8049C6EC  28 00 2B 0F */	cmplwi r0, 0x2b0f
/* 8049C6F0  41 81 00 10 */	bgt lbl_8049C700
lbl_8049C6F4:
/* 8049C6F4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE00@ha */
/* 8049C6F8  38 63 FE 00 */	addi r3, r3, 0xFE00 /* 0x0000FE00@l */
/* 8049C6FC  4E 80 00 20 */	blr 
lbl_8049C700:
/* 8049C700  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C704  28 00 FE 0E */	cmplwi r0, 0xfe0e
/* 8049C708  40 82 00 10 */	bne lbl_8049C718
/* 8049C70C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE00@ha */
/* 8049C710  38 63 FE 00 */	addi r3, r3, 0xFE00 /* 0x0000FE00@l */
/* 8049C714  4E 80 00 20 */	blr 
lbl_8049C718:
/* 8049C718  28 00 26 00 */	cmplwi r0, 0x2600
/* 8049C71C  41 80 00 18 */	blt lbl_8049C734
/* 8049C720  28 00 26 43 */	cmplwi r0, 0x2643
/* 8049C724  41 81 00 10 */	bgt lbl_8049C734
/* 8049C728  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE03@ha */
/* 8049C72C  38 63 FE 03 */	addi r3, r3, 0xFE03 /* 0x0000FE03@l */
/* 8049C730  4E 80 00 20 */	blr 
lbl_8049C734:
/* 8049C734  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C738  28 00 FE 11 */	cmplwi r0, 0xfe11
/* 8049C73C  40 82 00 10 */	bne lbl_8049C74C
/* 8049C740  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE03@ha */
/* 8049C744  38 63 FE 03 */	addi r3, r3, 0xFE03 /* 0x0000FE03@l */
/* 8049C748  4E 80 00 20 */	blr 
lbl_8049C74C:
/* 8049C74C  28 00 27 00 */	cmplwi r0, 0x2700
/* 8049C750  41 80 00 18 */	blt lbl_8049C768
/* 8049C754  28 00 27 43 */	cmplwi r0, 0x2743
/* 8049C758  41 81 00 10 */	bgt lbl_8049C768
/* 8049C75C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE04@ha */
/* 8049C760  38 63 FE 04 */	addi r3, r3, 0xFE04 /* 0x0000FE04@l */
/* 8049C764  4E 80 00 20 */	blr 
lbl_8049C768:
/* 8049C768  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C76C  28 00 FE 12 */	cmplwi r0, 0xfe12
/* 8049C770  40 82 00 10 */	bne lbl_8049C780
/* 8049C774  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE04@ha */
/* 8049C778  38 63 FE 04 */	addi r3, r3, 0xFE04 /* 0x0000FE04@l */
/* 8049C77C  4E 80 00 20 */	blr 
lbl_8049C780:
/* 8049C780  28 00 24 00 */	cmplwi r0, 0x2400
/* 8049C784  41 80 00 18 */	blt lbl_8049C79C
/* 8049C788  28 00 24 FF */	cmplwi r0, 0x24ff
/* 8049C78C  41 81 00 10 */	bgt lbl_8049C79C
/* 8049C790  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE01@ha */
/* 8049C794  38 63 FE 01 */	addi r3, r3, 0xFE01 /* 0x0000FE01@l */
/* 8049C798  4E 80 00 20 */	blr 
lbl_8049C79C:
/* 8049C79C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C7A0  28 00 FE 0F */	cmplwi r0, 0xfe0f
/* 8049C7A4  40 82 00 10 */	bne lbl_8049C7B4
/* 8049C7A8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE01@ha */
/* 8049C7AC  38 63 FE 01 */	addi r3, r3, 0xFE01 /* 0x0000FE01@l */
/* 8049C7B0  4E 80 00 20 */	blr 
lbl_8049C7B4:
/* 8049C7B4  28 00 22 00 */	cmplwi r0, 0x2200
/* 8049C7B8  41 80 00 6C */	blt lbl_8049C824
/* 8049C7BC  28 00 22 5C */	cmplwi r0, 0x225c
/* 8049C7C0  41 81 00 64 */	bgt lbl_8049C824
/* 8049C7C4  28 00 22 04 */	cmplwi r0, 0x2204
/* 8049C7C8  41 80 00 18 */	blt lbl_8049C7E0
/* 8049C7CC  28 00 22 2B */	cmplwi r0, 0x222b
/* 8049C7D0  41 81 00 10 */	bgt lbl_8049C7E0
/* 8049C7D4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE0A@ha */
/* 8049C7D8  38 63 FE 0A */	addi r3, r3, 0xFE0A /* 0x0000FE0A@l */
/* 8049C7DC  4E 80 00 20 */	blr 
lbl_8049C7E0:
/* 8049C7E0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C7E4  28 00 22 2D */	cmplwi r0, 0x222d
/* 8049C7E8  41 80 00 18 */	blt lbl_8049C800
/* 8049C7EC  28 00 22 38 */	cmplwi r0, 0x2238
/* 8049C7F0  41 81 00 10 */	bgt lbl_8049C800
/* 8049C7F4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE0B@ha */
/* 8049C7F8  38 63 FE 0B */	addi r3, r3, 0xFE0B /* 0x0000FE0B@l */
/* 8049C7FC  4E 80 00 20 */	blr 
lbl_8049C800:
/* 8049C800  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C804  28 00 25 1E */	cmplwi r0, 0x251e
/* 8049C808  40 82 00 10 */	bne lbl_8049C818
/* 8049C80C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE0C@ha */
/* 8049C810  38 63 FE 0C */	addi r3, r3, 0xFE0C /* 0x0000FE0C@l */
/* 8049C814  4E 80 00 20 */	blr 
lbl_8049C818:
/* 8049C818  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE06@ha */
/* 8049C81C  38 63 FE 06 */	addi r3, r3, 0xFE06 /* 0x0000FE06@l */
/* 8049C820  4E 80 00 20 */	blr 
lbl_8049C824:
/* 8049C824  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C828  28 00 FE 14 */	cmplwi r0, 0xfe14
/* 8049C82C  40 82 00 10 */	bne lbl_8049C83C
/* 8049C830  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE06@ha */
/* 8049C834  38 63 FE 06 */	addi r3, r3, 0xFE06 /* 0x0000FE06@l */
/* 8049C838  4E 80 00 20 */	blr 
lbl_8049C83C:
/* 8049C83C  28 00 FE 16 */	cmplwi r0, 0xfe16
/* 8049C840  40 82 00 10 */	bne lbl_8049C850
/* 8049C844  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE0A@ha */
/* 8049C848  38 63 FE 0A */	addi r3, r3, 0xFE0A /* 0x0000FE0A@l */
/* 8049C84C  4E 80 00 20 */	blr 
lbl_8049C850:
/* 8049C850  28 00 FE 17 */	cmplwi r0, 0xfe17
/* 8049C854  40 82 00 10 */	bne lbl_8049C864
/* 8049C858  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE0B@ha */
/* 8049C85C  38 63 FE 0B */	addi r3, r3, 0xFE0B /* 0x0000FE0B@l */
/* 8049C860  4E 80 00 20 */	blr 
lbl_8049C864:
/* 8049C864  28 00 FE 18 */	cmplwi r0, 0xfe18
/* 8049C868  40 82 00 10 */	bne lbl_8049C878
/* 8049C86C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE0C@ha */
/* 8049C870  38 63 FE 0C */	addi r3, r3, 0xFE0C /* 0x0000FE0C@l */
/* 8049C874  4E 80 00 20 */	blr 
lbl_8049C878:
/* 8049C878  28 00 29 00 */	cmplwi r0, 0x2900
/* 8049C87C  41 80 00 0C */	blt lbl_8049C888
/* 8049C880  28 00 29 01 */	cmplwi r0, 0x2901
/* 8049C884  40 81 00 20 */	ble lbl_8049C8A4
lbl_8049C888:
/* 8049C888  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C88C  28 00 29 02 */	cmplwi r0, 0x2902
/* 8049C890  41 80 00 20 */	blt lbl_8049C8B0
/* 8049C894  28 00 29 0A */	cmplwi r0, 0x290a
/* 8049C898  41 81 00 18 */	bgt lbl_8049C8B0
/* 8049C89C  2C 05 00 02 */	cmpwi r5, 2
/* 8049C8A0  40 82 00 10 */	bne lbl_8049C8B0
lbl_8049C8A4:
/* 8049C8A4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE05@ha */
/* 8049C8A8  38 63 FE 05 */	addi r3, r3, 0xFE05 /* 0x0000FE05@l */
/* 8049C8AC  4E 80 00 20 */	blr 
lbl_8049C8B0:
/* 8049C8B0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C8B4  28 00 29 02 */	cmplwi r0, 0x2902
/* 8049C8B8  41 80 00 0C */	blt lbl_8049C8C4
/* 8049C8BC  28 00 29 0A */	cmplwi r0, 0x290a
/* 8049C8C0  40 81 00 10 */	ble lbl_8049C8D0
lbl_8049C8C4:
/* 8049C8C4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8049C8C8  28 00 28 06 */	cmplwi r0, 0x2806
/* 8049C8CC  40 82 00 10 */	bne lbl_8049C8DC
lbl_8049C8D0:
/* 8049C8D0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE08@ha */
/* 8049C8D4  38 63 FE 08 */	addi r3, r3, 0xFE08 /* 0x0000FE08@l */
/* 8049C8D8  4E 80 00 20 */	blr 
lbl_8049C8DC:
/* 8049C8DC  38 60 00 00 */	li r3, 0
/* 8049C8E0  4E 80 00 20 */	blr 
