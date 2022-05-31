lbl_806372B4:
/* 806372B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806372B8  7C 08 02 A6 */	mflr r0
/* 806372BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806372C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806372C4  4B A6 3C 11 */	bl func_8009AED4
/* 806372C8  83 E5 00 00 */	lwz r31, 0(r5)
/* 806372CC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 806372D0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 806372D4  7C 7D 1B 78 */	mr r29, r3
/* 806372D8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 806372DC  38 7E 00 08 */	addi r3, r30, 8
/* 806372E0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806372E4  90 1E 00 00 */	stw r0, 0(r30)
/* 806372E8  80 65 00 00 */	lwz r3, 0(r5)
/* 806372EC  4B DD 60 E9 */	bl _Matrix_to_Mtx_new
/* 806372F0  90 7E 00 04 */	stw r3, 4(r30)
/* 806372F4  88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 806372F8  28 00 00 00 */	cmplwi r0, 0
/* 806372FC  41 82 00 40 */	beq lbl_8063733C
/* 80637300  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80637304  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80637308  A8 FD 08 10 */	lha r7, 0x810(r29)
/* 8063730C  3C 60 80 6E */	lis r3, aSumFruittv01_on_anime@ha /* 0x806DA704@ha */
/* 80637310  38 A6 00 08 */	addi r5, r6, 8
/* 80637314  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 80637318  90 BF 02 D0 */	stw r5, 0x2d0(r31)
/* 8063731C  7C E4 0E 70 */	srawi r4, r7, 1
/* 80637320  7C 84 07 34 */	extsh r4, r4
/* 80637324  38 63 A7 04 */	addi r3, r3, aSumFruittv01_on_anime@l /* 0x806DA704@l */
/* 80637328  90 06 00 00 */	stw r0, 0(r6)
/* 8063732C  54 80 10 3A */	slwi r0, r4, 2
/* 80637330  7C 03 00 2E */	lwzx r0, r3, r0
/* 80637334  90 06 00 04 */	stw r0, 4(r6)
/* 80637338  48 00 00 28 */	b lbl_80637360
lbl_8063733C:
/* 8063733C  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80637340  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80637344  3C 60 81 03 */	lis r3, int_sum_fruittv01_front1_TA_tex_txt@ha /* 0x81031FA0@ha */
/* 80637348  38 05 00 08 */	addi r0, r5, 8
/* 8063734C  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 80637350  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80637354  38 03 1F A0 */	addi r0, r3, int_sum_fruittv01_front1_TA_tex_txt@l /* 0x81031FA0@l */
/* 80637358  90 85 00 00 */	stw r4, 0(r5)
/* 8063735C  90 05 00 04 */	stw r0, 4(r5)
lbl_80637360:
/* 80637360  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80637364  3C 80 81 03 */	lis r4, int_sum_fruittv01_on_model@ha /* 0x810326E0@ha */
/* 80637368  3C 60 81 03 */	lis r3, int_sum_fruittv01_off_model@ha /* 0x810327F0@ha */
/* 8063736C  3C A0 DE 00 */	lis r5, 0xde00
/* 80637370  38 06 00 08 */	addi r0, r6, 8
/* 80637374  38 84 26 E0 */	addi r4, r4, int_sum_fruittv01_on_model@l /* 0x810326E0@l */
/* 80637378  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063737C  38 03 27 F0 */	addi r0, r3, int_sum_fruittv01_off_model@l /* 0x810327F0@l */
/* 80637380  90 A6 00 00 */	stw r5, 0(r6)
/* 80637384  90 86 00 04 */	stw r4, 4(r6)
/* 80637388  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063738C  38 64 00 08 */	addi r3, r4, 8
/* 80637390  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80637394  90 A4 00 00 */	stw r5, 0(r4)
/* 80637398  90 04 00 04 */	stw r0, 4(r4)
/* 8063739C  39 61 00 20 */	addi r11, r1, 0x20
/* 806373A0  4B A6 3B 81 */	bl func_8009AF20
/* 806373A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806373A8  7C 08 03 A6 */	mtlr r0
/* 806373AC  38 21 00 20 */	addi r1, r1, 0x20
/* 806373B0  4E 80 00 20 */	blr 
