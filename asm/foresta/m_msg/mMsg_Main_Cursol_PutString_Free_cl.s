lbl_803C3D48:
/* 803C3D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C3D4C  7C 08 02 A6 */	mflr r0
/* 803C3D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C3D54  39 61 00 20 */	addi r11, r1, 0x20
/* 803C3D58  4B CD 71 79 */	bl func_8009AED0
/* 803C3D5C  7C C7 33 79 */	or. r7, r6, r6
/* 803C3D60  7C 7C 1B 78 */	mr r28, r3
/* 803C3D64  7C 9D 23 78 */	mr r29, r4
/* 803C3D68  7C BE 2B 78 */	mr r30, r5
/* 803C3D6C  41 82 00 44 */	beq lbl_803C3DB0
/* 803C3D70  80 1C 04 0C */	lwz r0, 0x40c(r28)
/* 803C3D74  57 C3 20 36 */	slwi r3, r30, 4
/* 803C3D78  83 FC 00 0C */	lwz r31, 0xc(r28)
/* 803C3D7C  38 C3 00 38 */	addi r6, r3, 0x38
/* 803C3D80  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 803C3D84  80 BF 00 08 */	lwz r5, 8(r31)
/* 803C3D88  38 7F 00 20 */	addi r3, r31, 0x20
/* 803C3D8C  7C DC 32 14 */	add r6, r28, r6
/* 803C3D90  41 82 00 0C */	beq lbl_803C3D9C
/* 803C3D94  39 00 00 00 */	li r8, 0
/* 803C3D98  48 00 00 10 */	b lbl_803C3DA8
lbl_803C3D9C:
/* 803C3D9C  57 C0 10 3A */	slwi r0, r30, 2
/* 803C3DA0  7D 1C 02 14 */	add r8, r28, r0
/* 803C3DA4  81 08 01 78 */	lwz r8, 0x178(r8)
lbl_803C3DA8:
/* 803C3DA8  4B FF D9 25 */	bl mMsg_Set_PfColor
/* 803C3DAC  90 7F 00 08 */	stw r3, 8(r31)
lbl_803C3DB0:
/* 803C3DB0  80 9D 00 00 */	lwz r4, 0(r29)
/* 803C3DB4  7F 83 E3 78 */	mr r3, r28
/* 803C3DB8  7F C5 F3 78 */	mr r5, r30
/* 803C3DBC  4B FF FF 09 */	bl mMsg_Main_Cursol_PutString_Free
/* 803C3DC0  38 60 00 00 */	li r3, 0
/* 803C3DC4  39 61 00 20 */	addi r11, r1, 0x20
/* 803C3DC8  4B CD 71 55 */	bl func_8009AF1C
/* 803C3DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C3DD0  7C 08 03 A6 */	mtlr r0
/* 803C3DD4  38 21 00 20 */	addi r1, r1, 0x20
/* 803C3DD8  4E 80 00 20 */	blr 
