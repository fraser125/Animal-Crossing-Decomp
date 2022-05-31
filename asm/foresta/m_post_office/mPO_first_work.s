lbl_803DFD80:
/* 803DFD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DFD84  7C 08 02 A6 */	mflr r0
/* 803DFD88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803DFD8C  3C 60 80 64 */	lis r3, data_806432C4@ha /* 0x806432C4@ha */
/* 803DFD90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DFD94  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803DFD98  38 A0 00 7F */	li r5, 0x7f
/* 803DFD9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DFDA0  3B E4 00 0A */	addi r31, r4, 0xa
/* 803DFDA4  38 83 32 C4 */	addi r4, r3, data_806432C4@l /* 0x806432C4@l */
/* 803DFDA8  7F E3 FB 78 */	mr r3, r31
/* 803DFDAC  48 02 6A 8D */	bl lbRTC_IsEqualTime
/* 803DFDB0  2C 03 00 00 */	cmpwi r3, 0
/* 803DFDB4  40 82 00 28 */	bne lbl_803DFDDC
/* 803DFDB8  7F E3 FB 78 */	mr r3, r31
/* 803DFDBC  48 02 6C 05 */	bl lbRTC_IsOverRTC
/* 803DFDC0  2C 03 00 00 */	cmpwi r3, 0
/* 803DFDC4  40 82 00 18 */	bne lbl_803DFDDC
/* 803DFDC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DFDCC  38 00 00 01 */	li r0, 1
/* 803DFDD0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DFDD4  3C 63 00 03 */	addis r3, r3, 3
/* 803DFDD8  98 03 88 6A */	stb r0, -0x7796(r3)
lbl_803DFDDC:
/* 803DFDDC  4B FF FE 3D */	bl mPO_first_delivery_proc
/* 803DFDE0  4B FF F0 A1 */	bl mPO_adjust_keep_mail
/* 803DFDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DFDE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DFDEC  7C 08 03 A6 */	mtlr r0
/* 803DFDF0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DFDF4  4E 80 00 20 */	blr 
