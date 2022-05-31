lbl_805B2DDC:
/* 805B2DDC  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 805B2DE0  3C 80 80 6C */	lis r4, on_off_tbl@ha /* 0x806C5A00@ha */
/* 805B2DE4  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 805B2DE8  81 03 00 00 */	lwz r8, 0(r3)
/* 805B2DEC  3C E7 00 02 */	addis r7, r7, 2
/* 805B2DF0  38 64 5A 00 */	addi r3, r4, on_off_tbl@l /* 0x806C5A00@l */
/* 805B2DF4  88 87 61 25 */	lbz r4, 0x6125(r7)
/* 805B2DF8  2C 05 00 12 */	cmpwi r5, 0x12
/* 805B2DFC  88 A7 61 23 */	lbz r5, 0x6123(r7)
/* 805B2E00  54 80 10 3A */	slwi r0, r4, 2
/* 805B2E04  80 E8 02 D0 */	lwz r7, 0x2d0(r8)
/* 805B2E08  7C 63 02 14 */	add r3, r3, r0
/* 805B2E0C  80 03 FF FC */	lwz r0, -4(r3)
/* 805B2E10  40 82 00 48 */	bne lbl_805B2E58
/* 805B2E14  2C 04 00 08 */	cmpwi r4, 8
/* 805B2E18  41 82 00 24 */	beq lbl_805B2E3C
/* 805B2E1C  40 80 00 2C */	bge lbl_805B2E48
/* 805B2E20  2C 04 00 05 */	cmpwi r4, 5
/* 805B2E24  41 82 00 08 */	beq lbl_805B2E2C
/* 805B2E28  48 00 00 20 */	b lbl_805B2E48
lbl_805B2E2C:
/* 805B2E2C  2C 05 00 1A */	cmpwi r5, 0x1a
/* 805B2E30  40 80 00 18 */	bge lbl_805B2E48
/* 805B2E34  38 00 00 00 */	li r0, 0
/* 805B2E38  48 00 00 10 */	b lbl_805B2E48
lbl_805B2E3C:
/* 805B2E3C  2C 05 00 1A */	cmpwi r5, 0x1a
/* 805B2E40  40 80 00 08 */	bge lbl_805B2E48
/* 805B2E44  38 00 00 01 */	li r0, 1
lbl_805B2E48:
/* 805B2E48  2C 00 00 00 */	cmpwi r0, 0
/* 805B2E4C  40 82 00 0C */	bne lbl_805B2E58
/* 805B2E50  38 00 00 00 */	li r0, 0
/* 805B2E54  90 06 00 00 */	stw r0, 0(r6)
lbl_805B2E58:
/* 805B2E58  90 E8 02 D0 */	stw r7, 0x2d0(r8)
/* 805B2E5C  38 60 00 01 */	li r3, 1
/* 805B2E60  4E 80 00 20 */	blr 
