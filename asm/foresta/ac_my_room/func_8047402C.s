lbl_8047402C:
/* 8047402C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80474030  7C 08 02 A6 */	mflr r0
/* 80474034  90 01 00 24 */	stw r0, 0x24(r1)
/* 80474038  4B BC D6 05 */	bl famicom_getErrorChan
/* 8047403C  7C 60 1B 78 */	mr r0, r3
/* 80474040  38 61 00 08 */	addi r3, r1, 8
/* 80474044  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 80474048  38 80 00 10 */	li r4, 0x10
/* 8047404C  38 A5 06 CD */	addi r5, r5, 0x6cd
/* 80474050  4B F7 AC 7D */	bl mString_Load_StringFromRom
/* 80474054  4B F4 B6 55 */	bl func_803BF6A8
/* 80474058  38 A1 00 08 */	addi r5, r1, 8
/* 8047405C  38 80 00 04 */	li r4, 4
/* 80474060  38 C0 00 10 */	li r6, 0x10
/* 80474064  4B F4 BB F1 */	bl mMsg_Set_free_str
/* 80474068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047406C  7C 08 03 A6 */	mtlr r0
/* 80474070  38 21 00 20 */	addi r1, r1, 0x20
/* 80474074  4E 80 00 20 */	blr 
