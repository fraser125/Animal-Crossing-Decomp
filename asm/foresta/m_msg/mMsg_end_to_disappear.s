lbl_803C2A1C:
/* 803C2A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2A20  7C 08 02 A6 */	mflr r0
/* 803C2A24  38 80 00 04 */	li r4, 4
/* 803C2A28  38 A0 00 05 */	li r5, 5
/* 803C2A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2A34  7C 7F 1B 78 */	mr r31, r3
/* 803C2A38  4B FF CC 99 */	bl mMsg_Change_request_main_index
/* 803C2A3C  2C 03 00 00 */	cmpwi r3, 0
/* 803C2A40  41 82 00 1C */	beq lbl_803C2A5C
/* 803C2A44  7F E3 FB 78 */	mr r3, r31
/* 803C2A48  4B FF DC 6D */	bl mMsg_Clear_CursolIndex
/* 803C2A4C  7F E3 FB 78 */	mr r3, r31
/* 803C2A50  4B FF E2 E5 */	bl mMsg_Unset_ForceNext
/* 803C2A54  38 60 00 01 */	li r3, 1
/* 803C2A58  48 00 00 08 */	b lbl_803C2A60
lbl_803C2A5C:
/* 803C2A5C  38 60 00 00 */	li r3, 0
lbl_803C2A60:
/* 803C2A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2A68  7C 08 03 A6 */	mtlr r0
/* 803C2A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2A70  4E 80 00 20 */	blr 
