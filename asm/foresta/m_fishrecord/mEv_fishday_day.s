lbl_803ABD88:
/* 803ABD88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803ABD8C  7C 08 02 A6 */	mflr r0
/* 803ABD90  90 01 00 24 */	stw r0, 0x24(r1)
/* 803ABD94  39 61 00 20 */	addi r11, r1, 0x20
/* 803ABD98  4B CE F1 3D */	bl func_8009AED4
/* 803ABD9C  7C BF 2B 78 */	mr r31, r5
/* 803ABDA0  7C 7D 1B 78 */	mr r29, r3
/* 803ABDA4  7C 9E 23 78 */	mr r30, r4
/* 803ABDA8  38 A0 00 07 */	li r5, 7
/* 803ABDAC  48 05 B4 1D */	bl lbRTC_Week
/* 803ABDB0  1C 9F 00 07 */	mulli r4, r31, 7
/* 803ABDB4  3C A0 81 16 */	lis r5, ymd@ha /* 0x81167D08@ha */
/* 803ABDB8  B7 A5 7D 08 */	sthu r29, ymd@l(r5)  /* 0x81167D08@l */
/* 803ABDBC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803ABDC0  38 04 00 07 */	addi r0, r4, 7
/* 803ABDC4  9B C5 00 02 */	stb r30, 2(r5)
/* 803ABDC8  7F E3 00 50 */	subf r31, r3, r0
/* 803ABDCC  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 803ABDD0  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 803ABDD4  48 05 A9 A5 */	bl lbRTC_GetDaysByMonth
/* 803ABDD8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803ABDDC  7C 1F 00 00 */	cmpw r31, r0
/* 803ABDE0  40 81 00 0C */	ble lbl_803ABDEC
/* 803ABDE4  38 60 00 00 */	li r3, 0
/* 803ABDE8  48 00 00 10 */	b lbl_803ABDF8
lbl_803ABDEC:
/* 803ABDEC  3C 60 81 16 */	lis r3, ymd@ha /* 0x81167D08@ha */
/* 803ABDF0  38 63 7D 08 */	addi r3, r3, ymd@l /* 0x81167D08@l */
/* 803ABDF4  9B E3 00 03 */	stb r31, 3(r3)
lbl_803ABDF8:
/* 803ABDF8  39 61 00 20 */	addi r11, r1, 0x20
/* 803ABDFC  4B CE F1 25 */	bl func_8009AF20
/* 803ABE00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803ABE04  7C 08 03 A6 */	mtlr r0
/* 803ABE08  38 21 00 20 */	addi r1, r1, 0x20
/* 803ABE0C  4E 80 00 20 */	blr 
