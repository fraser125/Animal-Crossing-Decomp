lbl_803DB7DC:
/* 803DB7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB7E0  7C 08 02 A6 */	mflr r0
/* 803DB7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB7E8  4B FF DE 59 */	bl get_player_actor_withoutCheck
/* 803DB7EC  80 63 0E 64 */	lwz r3, 0xe64(r3)
/* 803DB7F0  28 03 00 00 */	cmplwi r3, 0
/* 803DB7F4  41 82 00 18 */	beq lbl_803DB80C
/* 803DB7F8  80 03 01 F0 */	lwz r0, 0x1f0(r3)
/* 803DB7FC  2C 00 00 00 */	cmpwi r0, 0
/* 803DB800  41 82 00 0C */	beq lbl_803DB80C
/* 803DB804  38 60 00 01 */	li r3, 1
/* 803DB808  48 00 00 08 */	b lbl_803DB810
lbl_803DB80C:
/* 803DB80C  38 60 00 00 */	li r3, 0
lbl_803DB810:
/* 803DB810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB814  7C 08 03 A6 */	mtlr r0
/* 803DB818  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB81C  4E 80 00 20 */	blr 
