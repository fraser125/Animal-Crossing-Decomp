lbl_803C4970:
/* 803C4970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4974  7C 08 02 A6 */	mflr r0
/* 803C4978  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C497C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4980  7C 7F 1B 78 */	mr r31, r3
/* 803C4984  80 04 00 00 */	lwz r0, 0(r4)
/* 803C4988  90 03 04 20 */	stw r0, 0x420(r3)
/* 803C498C  80 A3 04 0C */	lwz r5, 0x40c(r3)
/* 803C4990  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 803C4994  41 82 00 38 */	beq lbl_803C49CC
/* 803C4998  80 84 00 00 */	lwz r4, 0(r4)
/* 803C499C  4B FF BB 81 */	bl mMsg_Get_MsgTimeEnd_time
/* 803C49A0  2C 03 00 00 */	cmpwi r3, 0
/* 803C49A4  40 81 00 08 */	ble lbl_803C49AC
/* 803C49A8  38 63 FF FF */	addi r3, r3, -1
lbl_803C49AC:
/* 803C49AC  54 64 10 3A */	slwi r4, r3, 2
/* 803C49B0  38 60 00 01 */	li r3, 1
/* 803C49B4  38 04 00 01 */	addi r0, r4, 1
/* 803C49B8  B0 1F 03 EC */	sth r0, 0x3ec(r31)
/* 803C49BC  80 1F 04 0C */	lwz r0, 0x40c(r31)
/* 803C49C0  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 803C49C4  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 803C49C8  48 00 00 10 */	b lbl_803C49D8
lbl_803C49CC:
/* 803C49CC  60 A0 00 08 */	ori r0, r5, 8
/* 803C49D0  38 60 00 02 */	li r3, 2
/* 803C49D4  90 1F 04 0C */	stw r0, 0x40c(r31)
lbl_803C49D8:
/* 803C49D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C49DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C49E0  7C 08 03 A6 */	mtlr r0
/* 803C49E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C49E8  4E 80 00 20 */	blr 
