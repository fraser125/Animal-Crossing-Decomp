lbl_803C3964:
/* 803C3964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C3968  7C 08 02 A6 */	mflr r0
/* 803C396C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C3970  39 61 00 20 */	addi r11, r1, 0x20
/* 803C3974  4B CD 75 5D */	bl func_8009AED0
/* 803C3978  80 A3 04 0C */	lwz r5, 0x40c(r3)
/* 803C397C  7C 9C 23 78 */	mr r28, r4
/* 803C3980  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 803C3984  54 A0 04 1C */	rlwinm r0, r5, 0, 0x10, 0xe
/* 803C3988  54 BD 03 DE */	rlwinm r29, r5, 0, 0xf, 0xf
/* 803C398C  90 03 04 0C */	stw r0, 0x40c(r3)
/* 803C3990  3B DF 00 20 */	addi r30, r31, 0x20
/* 803C3994  7F C3 F3 78 */	mr r3, r30
/* 803C3998  80 BF 00 08 */	lwz r5, 8(r31)
/* 803C399C  4B FF D4 C5 */	bl mMsg_Set_PlayerNameColor
/* 803C39A0  90 7F 00 08 */	stw r3, 8(r31)
/* 803C39A4  7F C3 F3 78 */	mr r3, r30
/* 803C39A8  7F A6 EB 78 */	mr r6, r29
/* 803C39AC  80 9C 00 00 */	lwz r4, 0(r28)
/* 803C39B0  80 BF 00 08 */	lwz r5, 8(r31)
/* 803C39B4  4B FF D5 91 */	bl mMsg_CopyPlayerName
/* 803C39B8  90 7F 00 08 */	stw r3, 8(r31)
/* 803C39BC  38 60 00 00 */	li r3, 0
/* 803C39C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803C39C4  4B CD 75 59 */	bl func_8009AF1C
/* 803C39C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C39CC  7C 08 03 A6 */	mtlr r0
/* 803C39D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803C39D4  4E 80 00 20 */	blr 
