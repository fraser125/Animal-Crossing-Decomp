lbl_8057BC14:
/* 8057BC14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BC18  7C 08 02 A6 */	mflr r0
/* 8057BC1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BC20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BC24  7C 7F 1B 78 */	mr r31, r3
/* 8057BC28  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 8057BC2C  98 03 09 A3 */	stb r0, 0x9a3(r3)
/* 8057BC30  4B FF B7 61 */	bl aNSC_set_stop_spd
/* 8057BC34  38 9F 00 28 */	addi r4, r31, 0x28
/* 8057BC38  38 60 00 69 */	li r3, 0x69
/* 8057BC3C  48 0B 23 6D */	bl sAdo_OngenTrgStart
/* 8057BC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BC48  7C 08 03 A6 */	mtlr r0
/* 8057BC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BC50  4E 80 00 20 */	blr 
