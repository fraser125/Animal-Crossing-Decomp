lbl_805B3D70:
/* 805B3D70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3D74  7C 08 02 A6 */	mflr r0
/* 805B3D78  38 A0 00 00 */	li r5, 0
/* 805B3D7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3D80  38 81 00 08 */	addi r4, r1, 8
/* 805B3D84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B3D88  7C 7F 1B 78 */	mr r31, r3
/* 805B3D8C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F11C@ha */
/* 805B3D90  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 805B3D94  38 63 F1 1C */	addi r3, r3, 0xF11C /* 0x0000F11C@l */
/* 805B3D98  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 805B3D9C  90 C1 00 08 */	stw r6, 8(r1)
/* 805B3DA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B3DA4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805B3DA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B3DAC  4B DF 3A 85 */	bl mFI_SetFG_common
/* 805B3DB0  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 805B3DB4  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 805B3DB8  90 1F 01 64 */	stw r0, 0x164(r31)
/* 805B3DBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B3DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B3DC4  7C 08 03 A6 */	mtlr r0
/* 805B3DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 805B3DCC  4E 80 00 20 */	blr 
