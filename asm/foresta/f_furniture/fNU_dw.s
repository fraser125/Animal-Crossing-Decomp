lbl_80634F94:
/* 80634F94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80634F98  7C 08 02 A6 */	mflr r0
/* 80634F9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80634FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80634FA4  4B A6 5F 31 */	bl func_8009AED4
/* 80634FA8  83 E5 00 00 */	lwz r31, 0(r5)
/* 80634FAC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80634FB0  83 A3 08 50 */	lwz r29, 0x850(r3)
/* 80634FB4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80634FB8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 80634FBC  38 7E 00 08 */	addi r3, r30, 8
/* 80634FC0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80634FC4  90 1E 00 00 */	stw r0, 0(r30)
/* 80634FC8  80 65 00 00 */	lwz r3, 0(r5)
/* 80634FCC  4B DD 84 09 */	bl _Matrix_to_Mtx_new
/* 80634FD0  90 7E 00 04 */	stw r3, 4(r30)
/* 80634FD4  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 80634FD8  3C A0 80 F7 */	lis r5, int_nog_uranai_on_model@ha /* 0x80F74FD0@ha */
/* 80634FDC  3C 80 80 F7 */	lis r4, int_nog_uranai_off_model@ha /* 0x80F75050@ha */
/* 80634FE0  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 80634FE4  3C 60 80 F7 */	lis r3, int_nog_uranai_onT_model@ha /* 0x80F750A8@ha */
/* 80634FE8  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 80634FEC  3C C0 DE 00 */	lis r6, 0xde00
/* 80634FF0  38 08 00 08 */	addi r0, r8, 8
/* 80634FF4  38 A5 4F D0 */	addi r5, r5, int_nog_uranai_on_model@l /* 0x80F74FD0@l */
/* 80634FF8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80634FFC  38 84 50 50 */	addi r4, r4, int_nog_uranai_off_model@l /* 0x80F75050@l */
/* 80635000  38 03 50 A8 */	addi r0, r3, int_nog_uranai_onT_model@l /* 0x80F750A8@l */
/* 80635004  90 E8 00 00 */	stw r7, 0(r8)
/* 80635008  93 A8 00 04 */	stw r29, 4(r8)
/* 8063500C  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80635010  38 67 00 08 */	addi r3, r7, 8
/* 80635014  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80635018  90 C7 00 00 */	stw r6, 0(r7)
/* 8063501C  90 A7 00 04 */	stw r5, 4(r7)
/* 80635020  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80635024  38 65 00 08 */	addi r3, r5, 8
/* 80635028  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063502C  90 C5 00 00 */	stw r6, 0(r5)
/* 80635030  90 85 00 04 */	stw r4, 4(r5)
/* 80635034  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 80635038  38 64 00 08 */	addi r3, r4, 8
/* 8063503C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80635040  90 C4 00 00 */	stw r6, 0(r4)
/* 80635044  90 04 00 04 */	stw r0, 4(r4)
/* 80635048  39 61 00 20 */	addi r11, r1, 0x20
/* 8063504C  4B A6 5E D5 */	bl func_8009AF20
/* 80635050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80635054  7C 08 03 A6 */	mtlr r0
/* 80635058  38 21 00 20 */	addi r1, r1, 0x20
/* 8063505C  4E 80 00 20 */	blr 
