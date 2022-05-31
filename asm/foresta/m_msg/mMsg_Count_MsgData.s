lbl_803C080C:
/* 803C080C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0810  7C 08 02 A6 */	mflr r0
/* 803C0814  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C081C  3B E0 00 00 */	li r31, 0
/* 803C0820  93 C1 00 08 */	stw r30, 8(r1)
/* 803C0824  7C 7E 1B 78 */	mr r30, r3
/* 803C0828  48 00 00 64 */	b lbl_803C088C
lbl_803C082C:
/* 803C082C  7F C3 F3 78 */	mr r3, r30
/* 803C0830  7F E4 FB 78 */	mr r4, r31
/* 803C0834  4B FF F8 B9 */	bl mMsg_Check_LastCode_forData
/* 803C0838  2C 03 00 00 */	cmpwi r3, 0
/* 803C083C  40 82 00 2C */	bne lbl_803C0868
/* 803C0840  7F C3 F3 78 */	mr r3, r30
/* 803C0844  7F E4 FB 78 */	mr r4, r31
/* 803C0848  4B FF F8 F9 */	bl mMsg_Check_ContinueCode_forData
/* 803C084C  2C 03 00 00 */	cmpwi r3, 0
/* 803C0850  40 82 00 18 */	bne lbl_803C0868
/* 803C0854  7F C3 F3 78 */	mr r3, r30
/* 803C0858  7F E4 FB 78 */	mr r4, r31
/* 803C085C  4B FF FC E9 */	bl mMsg_Check_MsgTimeEndCode_forData
/* 803C0860  2C 03 00 00 */	cmpwi r3, 0
/* 803C0864  41 82 00 18 */	beq lbl_803C087C
lbl_803C0868:
/* 803C0868  7F C3 F3 78 */	mr r3, r30
/* 803C086C  7F E4 FB 78 */	mr r4, r31
/* 803C0870  4B FE EF 99 */	bl mFont_CodeSize_idx_get
/* 803C0874  7F FF 1A 14 */	add r31, r31, r3
/* 803C0878  48 00 00 1C */	b lbl_803C0894
lbl_803C087C:
/* 803C087C  7F C3 F3 78 */	mr r3, r30
/* 803C0880  7F E4 FB 78 */	mr r4, r31
/* 803C0884  4B FE EF 85 */	bl mFont_CodeSize_idx_get
/* 803C0888  7F FF 1A 14 */	add r31, r31, r3
lbl_803C088C:
/* 803C088C  2C 1F 06 00 */	cmpwi r31, 0x600
/* 803C0890  41 80 FF 9C */	blt lbl_803C082C
lbl_803C0894:
/* 803C0894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0898  7F E3 FB 78 */	mr r3, r31
/* 803C089C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C08A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C08A4  7C 08 03 A6 */	mtlr r0
/* 803C08A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C08AC  4E 80 00 20 */	blr 
