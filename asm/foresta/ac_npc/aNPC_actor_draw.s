lbl_805307D4:
/* 805307D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805307D8  7C 08 02 A6 */	mflr r0
/* 805307DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805307E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805307E4  7C 7F 1B 78 */	mr r31, r3
/* 805307E8  88 03 08 30 */	lbz r0, 0x830(r3)
/* 805307EC  28 00 00 00 */	cmplwi r0, 0
/* 805307F0  40 82 00 10 */	bne lbl_80530800
/* 805307F4  4B FF FC D5 */	bl aNPC_actor_draw_sub
/* 805307F8  7F E3 FB 78 */	mr r3, r31
/* 805307FC  4B FF F8 55 */	bl aNPC_set_shadow_pos
lbl_80530800:
/* 80530800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80530804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80530808  7C 08 03 A6 */	mtlr r0
/* 8053080C  38 21 00 10 */	addi r1, r1, 0x10
/* 80530810  4E 80 00 20 */	blr 
