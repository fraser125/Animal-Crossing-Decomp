lbl_804E0BA0:
/* 804E0BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0BA4  7C 08 02 A6 */	mflr r0
/* 804E0BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E0BB0  7C 7F 1B 78 */	mr r31, r3
/* 804E0BB4  4B FF FF 05 */	bl Player_actor_birth_umbrella
/* 804E0BB8  80 7F 0E 64 */	lwz r3, 0xe64(r31)
/* 804E0BBC  28 03 00 00 */	cmplwi r3, 0
/* 804E0BC0  41 82 00 10 */	beq lbl_804E0BD0
/* 804E0BC4  38 00 00 00 */	li r0, 0
/* 804E0BC8  98 03 01 49 */	stb r0, 0x149(r3)
/* 804E0BCC  48 00 00 08 */	b lbl_804E0BD4
lbl_804E0BD0:
/* 804E0BD0  38 60 00 00 */	li r3, 0
lbl_804E0BD4:
/* 804E0BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E0BDC  7C 08 03 A6 */	mtlr r0
/* 804E0BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0BE4  4E 80 00 20 */	blr 
