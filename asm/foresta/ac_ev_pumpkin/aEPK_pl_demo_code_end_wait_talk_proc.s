lbl_80523170:
/* 80523170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80523174  7C 08 02 A6 */	mflr r0
/* 80523178  38 80 00 00 */	li r4, 0
/* 8052317C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80523180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80523184  93 C1 00 08 */	stw r30, 8(r1)
/* 80523188  7C 7E 1B 78 */	mr r30, r3
/* 8052318C  38 60 00 00 */	li r3, 0
/* 80523190  4B E7 52 ED */	bl mDemo_Get_OrderValue
/* 80523194  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80523198  40 82 00 30 */	bne lbl_805231C8
/* 8052319C  4B E9 C5 0D */	bl func_803BF6A8
/* 805231A0  7C 7F 1B 78 */	mr r31, r3
/* 805231A4  4B E9 DB A9 */	bl mMsg_Unset_LockContinue
/* 805231A8  7F E3 FB 78 */	mr r3, r31
/* 805231AC  4B E9 DB 7D */	bl mMsg_Set_ForceNext
/* 805231B0  7F E3 FB 78 */	mr r3, r31
/* 805231B4  38 80 09 B7 */	li r4, 0x9b7
/* 805231B8  4B E9 D7 E1 */	bl mMsg_ChangeMsgData
/* 805231BC  7F C3 F3 78 */	mr r3, r30
/* 805231C0  38 80 00 0F */	li r4, 0xf
/* 805231C4  48 00 00 1D */	bl aEPK_change_talk_proc
lbl_805231C8:
/* 805231C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805231CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805231D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805231D4  7C 08 03 A6 */	mtlr r0
/* 805231D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805231DC  4E 80 00 20 */	blr 
