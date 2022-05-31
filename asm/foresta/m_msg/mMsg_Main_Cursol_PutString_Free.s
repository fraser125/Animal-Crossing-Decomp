lbl_803C3CC4:
/* 803C3CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C3CC8  7C 08 02 A6 */	mflr r0
/* 803C3CCC  7C 86 23 78 */	mr r6, r4
/* 803C3CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C3CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C3CD8  7C 7F 1B 78 */	mr r31, r3
/* 803C3CDC  80 83 04 0C */	lwz r4, 0x40c(r3)
/* 803C3CE0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C3CE4  54 80 04 21 */	rlwinm. r0, r4, 0, 0x10, 0x10
/* 803C3CE8  54 89 03 DE */	rlwinm r9, r4, 0, 0xf, 0xf
/* 803C3CEC  80 E3 00 08 */	lwz r7, 8(r3)
/* 803C3CF0  39 43 00 20 */	addi r10, r3, 0x20
/* 803C3CF4  41 82 00 14 */	beq lbl_803C3D08
/* 803C3CF8  54 80 04 5E */	rlwinm r0, r4, 0, 0x11, 0xf
/* 803C3CFC  39 00 00 00 */	li r8, 0
/* 803C3D00  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 803C3D04  48 00 00 08 */	b lbl_803C3D0C
lbl_803C3D08:
/* 803C3D08  39 00 00 05 */	li r8, 5
lbl_803C3D0C:
/* 803C3D0C  80 1F 04 0C */	lwz r0, 0x40c(r31)
/* 803C3D10  7C A4 2B 78 */	mr r4, r5
/* 803C3D14  7F E3 FB 78 */	mr r3, r31
/* 803C3D18  7D 45 53 78 */	mr r5, r10
/* 803C3D1C  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 803C3D20  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 803C3D24  4B FF D8 55 */	bl mMsg_CopyFree
/* 803C3D28  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803C3D2C  90 64 00 08 */	stw r3, 8(r4)
/* 803C3D30  38 60 00 00 */	li r3, 0
/* 803C3D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C3D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C3D3C  7C 08 03 A6 */	mtlr r0
/* 803C3D40  38 21 00 10 */	addi r1, r1, 0x10
/* 803C3D44  4E 80 00 20 */	blr 
