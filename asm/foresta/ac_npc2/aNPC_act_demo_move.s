lbl_8053EF00:
/* 8053EF00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053EF04  7C 08 02 A6 */	mflr r0
/* 8053EF08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053EF0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8053EF10  4B B5 BF C5 */	bl func_8009AED4
/* 8053EF14  7C 7D 1B 78 */	mr r29, r3
/* 8053EF18  3B C0 00 01 */	li r30, 1
/* 8053EF1C  83 E3 09 2C */	lwz r31, 0x92c(r3)
/* 8053EF20  7F E3 FB 78 */	mr r3, r31
/* 8053EF24  4B FF FD F1 */	bl aNPC_check_live_target
/* 8053EF28  2C 03 00 00 */	cmpwi r3, 0
/* 8053EF2C  40 82 00 0C */	bne lbl_8053EF38
/* 8053EF30  3B C0 00 00 */	li r30, 0
/* 8053EF34  48 00 00 3C */	b lbl_8053EF70
lbl_8053EF38:
/* 8053EF38  38 61 00 08 */	addi r3, r1, 8
/* 8053EF3C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8053EF40  4B E7 BF 7D */	bl xyz_t_move
/* 8053EF44  C0 21 00 08 */	lfs f1, 8(r1)
/* 8053EF48  7F A3 EB 78 */	mr r3, r29
/* 8053EF4C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8053EF50  4B FF EB D9 */	bl aNPC_set_dst_pos
/* 8053EF54  7F A3 EB 78 */	mr r3, r29
/* 8053EF58  4B FF EB 61 */	bl aNPC_set_mv_angl
/* 8053EF5C  7F A3 EB 78 */	mr r3, r29
/* 8053EF60  4B FF FB 71 */	bl aNPC_check_arrive_destination
/* 8053EF64  2C 03 00 01 */	cmpwi r3, 1
/* 8053EF68  40 82 00 08 */	bne lbl_8053EF70
/* 8053EF6C  3B C0 00 00 */	li r30, 0
lbl_8053EF70:
/* 8053EF70  7F C3 F3 78 */	mr r3, r30
/* 8053EF74  39 61 00 30 */	addi r11, r1, 0x30
/* 8053EF78  4B B5 BF A9 */	bl func_8009AF20
/* 8053EF7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053EF80  7C 08 03 A6 */	mtlr r0
/* 8053EF84  38 21 00 30 */	addi r1, r1, 0x30
/* 8053EF88  4E 80 00 20 */	blr 
