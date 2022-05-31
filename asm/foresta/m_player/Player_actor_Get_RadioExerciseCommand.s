lbl_804DEC44:
/* 804DEC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DEC48  7C 08 02 A6 */	mflr r0
/* 804DEC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DEC50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DEC54  7C 9F 23 78 */	mr r31, r4
/* 804DEC58  7C A4 2B 78 */	mr r4, r5
/* 804DEC5C  4B FF FF D5 */	bl Player_actor_Get_RadioExerciseCommandRingBufferIndex
/* 804DEC60  2C 03 00 00 */	cmpwi r3, 0
/* 804DEC64  40 80 00 10 */	bge lbl_804DEC74
/* 804DEC68  2C 03 00 08 */	cmpwi r3, 8
/* 804DEC6C  40 80 00 08 */	bge lbl_804DEC74
/* 804DEC70  38 60 00 00 */	li r3, 0
lbl_804DEC74:
/* 804DEC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DEC78  7C 7F 18 AE */	lbzx r3, r31, r3
/* 804DEC7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DEC80  7C 08 03 A6 */	mtlr r0
/* 804DEC84  38 21 00 10 */	addi r1, r1, 0x10
/* 804DEC88  4E 80 00 20 */	blr 
