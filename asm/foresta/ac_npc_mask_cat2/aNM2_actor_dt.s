lbl_8055F390:
/* 8055F390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055F394  7C 08 02 A6 */	mflr r0
/* 8055F398  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D076@ha */
/* 8055F39C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055F3A0  38 05 D0 76 */	addi r0, r5, 0xD076 /* 0x0000D076@l */
/* 8055F3A4  B0 03 00 06 */	sth r0, 6(r3)
/* 8055F3A8  80 A3 09 CC */	lwz r5, 0x9cc(r3)
/* 8055F3AC  28 05 00 00 */	cmplwi r5, 0
/* 8055F3B0  41 82 00 10 */	beq lbl_8055F3C0
/* 8055F3B4  38 00 00 00 */	li r0, 0
/* 8055F3B8  90 03 09 CC */	stw r0, 0x9cc(r3)
/* 8055F3BC  90 05 01 4C */	stw r0, 0x14c(r5)
lbl_8055F3C0:
/* 8055F3C0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055F3C4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055F3C8  3C A5 00 02 */	addis r5, r5, 2
/* 8055F3CC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8055F3D0  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8055F3D4  7D 89 03 A6 */	mtctr r12
/* 8055F3D8  4E 80 04 21 */	bctrl 
/* 8055F3DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055F3E0  38 00 00 17 */	li r0, 0x17
/* 8055F3E4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8055F3E8  38 60 00 8D */	li r3, 0x8d
/* 8055F3EC  3C 84 00 03 */	addis r4, r4, 3
/* 8055F3F0  B0 04 85 92 */	sth r0, -0x7a6e(r4)
/* 8055F3F4  48 0C EB 31 */	bl sAdo_SysLevStop
/* 8055F3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055F3FC  7C 08 03 A6 */	mtlr r0
/* 8055F400  38 21 00 10 */	addi r1, r1, 0x10
/* 8055F404  4E 80 00 20 */	blr 
