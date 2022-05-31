lbl_804E1DDC:
/* 804E1DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1DE0  7C 08 02 A6 */	mflr r0
/* 804E1DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1DE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1DEC  93 C1 00 08 */	stw r30, 8(r1)
/* 804E1DF0  7C 7E 1B 78 */	mr r30, r3
/* 804E1DF4  4B FF ED AD */	bl Player_actor_Get_umbrella_p
/* 804E1DF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804E1DFC  41 82 00 14 */	beq lbl_804E1E10
/* 804E1E00  38 7F 01 78 */	addi r3, r31, 0x178
/* 804E1E04  4B F2 A4 29 */	bl Matrix_get
/* 804E1E08  38 00 00 01 */	li r0, 1
/* 804E1E0C  90 1F 01 B8 */	stw r0, 0x1b8(r31)
lbl_804E1E10:
/* 804E1E10  38 00 00 00 */	li r0, 0
/* 804E1E14  90 1E 0F 4C */	stw r0, 0xf4c(r30)
/* 804E1E18  90 1E 11 70 */	stw r0, 0x1170(r30)
/* 804E1E1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1E20  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E1E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1E28  7C 08 03 A6 */	mtlr r0
/* 804E1E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1E30  4E 80 00 20 */	blr 
