lbl_80571D8C:
/* 80571D8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80571D90  7C 08 02 A6 */	mflr r0
/* 80571D94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80571D98  39 61 00 20 */	addi r11, r1, 0x20
/* 80571D9C  4B B2 91 39 */	bl func_8009AED4
/* 80571DA0  7C 7D 1B 78 */	mr r29, r3
/* 80571DA4  3C 60 80 6C */	lis r3, dt_tbl_1034@ha /* 0x806BF36C@ha */
/* 80571DA8  90 BD 09 98 */	stw r5, 0x998(r29)
/* 80571DAC  54 A5 20 36 */	slwi r5, r5, 4
/* 80571DB0  38 03 F3 6C */	addi r0, r3, dt_tbl_1034@l /* 0x806BF36C@l */
/* 80571DB4  3C 60 80 6C */	lis r3, arg_data@ha /* 0x806BF3DC@ha */
/* 80571DB8  7F E0 2A 14 */	add r31, r0, r5
/* 80571DBC  38 E0 00 01 */	li r7, 1
/* 80571DC0  80 BF 00 00 */	lwz r5, 0(r31)
/* 80571DC4  38 C0 00 00 */	li r6, 0
/* 80571DC8  38 03 F3 DC */	addi r0, r3, arg_data@l /* 0x806BF3DC@l */
/* 80571DCC  7C 9E 23 78 */	mr r30, r4
/* 80571DD0  90 BD 09 A0 */	stw r5, 0x9a0(r29)
/* 80571DD4  7C 04 03 78 */	mr r4, r0
/* 80571DD8  38 7D 08 0C */	addi r3, r29, 0x80c
/* 80571DDC  38 A0 00 0C */	li r5, 0xc
/* 80571DE0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80571DE4  90 1D 09 64 */	stw r0, 0x964(r29)
/* 80571DE8  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80571DEC  90 1D 09 A4 */	stw r0, 0x9a4(r29)
/* 80571DF0  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 80571DF4  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80571DF8  98 FD 08 08 */	stb r7, 0x808(r29)
/* 80571DFC  98 DD 08 09 */	stb r6, 0x809(r29)
/* 80571E00  98 DD 08 0A */	stb r6, 0x80a(r29)
/* 80571E04  4B E4 8C 21 */	bl func_803BAA24
/* 80571E08  81 9F 00 04 */	lwz r12, 4(r31)
/* 80571E0C  7F A3 EB 78 */	mr r3, r29
/* 80571E10  7F C4 F3 78 */	mr r4, r30
/* 80571E14  7D 89 03 A6 */	mtctr r12
/* 80571E18  4E 80 04 21 */	bctrl 
/* 80571E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80571E20  4B B2 91 01 */	bl func_8009AF20
/* 80571E24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80571E28  7C 08 03 A6 */	mtlr r0
/* 80571E2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80571E30  4E 80 00 20 */	blr 
