lbl_8063EF9C:
/* 8063EF9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063EFA0  7C 08 02 A6 */	mflr r0
/* 8063EFA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063EFA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063EFAC  4B A5 BF 29 */	bl func_8009AED4
/* 8063EFB0  A8 03 00 02 */	lha r0, 2(r3)
/* 8063EFB4  2C 00 00 01 */	cmpwi r0, 1
/* 8063EFB8  40 82 00 0C */	bne lbl_8063EFC4
/* 8063EFBC  83 A5 20 90 */	lwz r29, 0x2090(r5)
/* 8063EFC0  48 00 00 08 */	b lbl_8063EFC8
lbl_8063EFC4:
/* 8063EFC4  83 A5 00 A0 */	lwz r29, 0xa0(r5)
lbl_8063EFC8:
/* 8063EFC8  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063EFCC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063EFD0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063EFD4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063EFD8  38 7E 00 08 */	addi r3, r30, 8
/* 8063EFDC  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063EFE0  90 1E 00 00 */	stw r0, 0(r30)
/* 8063EFE4  80 65 00 00 */	lwz r3, 0(r5)
/* 8063EFE8  4B DC E3 ED */	bl _Matrix_to_Mtx_new
/* 8063EFEC  90 7E 00 04 */	stw r3, 4(r30)
/* 8063EFF0  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060024@ha */
/* 8063EFF4  3C 80 81 12 */	lis r4, int_yaz_candle_body_model@ha /* 0x81119620@ha */
/* 8063EFF8  3C A0 80 6E */	lis r5, texture_table_7145@ha /* 0x806DF368@ha */
/* 8063EFFC  81 3F 02 D0 */	lwz r9, 0x2d0(r31)
/* 8063F000  39 06 00 24 */	addi r8, r6, 0x0024 /* 0xDB060024@l */
/* 8063F004  38 C5 F3 68 */	addi r6, r5, texture_table_7145@l /* 0x806DF368@l */
/* 8063F008  3C 60 81 12 */	lis r3, int_yaz_candle_fire_model@ha /* 0x811195A0@ha */
/* 8063F00C  38 09 00 08 */	addi r0, r9, 8
/* 8063F010  57 A7 0F 7A */	rlwinm r7, r29, 1, 0x1d, 0x1d
/* 8063F014  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063F018  38 03 95 A0 */	addi r0, r3, int_yaz_candle_fire_model@l /* 0x811195A0@l */
/* 8063F01C  3C A0 DE 00 */	lis r5, 0xde00
/* 8063F020  38 84 96 20 */	addi r4, r4, int_yaz_candle_body_model@l /* 0x81119620@l */
/* 8063F024  91 09 00 00 */	stw r8, 0(r9)
/* 8063F028  39 61 00 20 */	addi r11, r1, 0x20
/* 8063F02C  7C 66 38 2E */	lwzx r3, r6, r7
/* 8063F030  90 69 00 04 */	stw r3, 4(r9)
/* 8063F034  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063F038  38 66 00 08 */	addi r3, r6, 8
/* 8063F03C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F040  90 A6 00 00 */	stw r5, 0(r6)
/* 8063F044  90 86 00 04 */	stw r4, 4(r6)
/* 8063F048  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063F04C  38 64 00 08 */	addi r3, r4, 8
/* 8063F050  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F054  90 A4 00 00 */	stw r5, 0(r4)
/* 8063F058  90 04 00 04 */	stw r0, 4(r4)
/* 8063F05C  4B A5 BE C5 */	bl func_8009AF20
/* 8063F060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063F064  7C 08 03 A6 */	mtlr r0
/* 8063F068  38 21 00 20 */	addi r1, r1, 0x20
/* 8063F06C  4E 80 00 20 */	blr 
