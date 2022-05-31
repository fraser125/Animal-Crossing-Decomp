lbl_8053CBA8:
/* 8053CBA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053CBAC  7C 08 02 A6 */	mflr r0
/* 8053CBB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053CBB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CBB8  4B B5 E3 1D */	bl func_8009AED4
/* 8053CBBC  7C 7D 1B 78 */	mr r29, r3
/* 8053CBC0  7C BE 2B 78 */	mr r30, r5
/* 8053CBC4  88 03 08 BE */	lbz r0, 0x8be(r3)
/* 8053CBC8  7C DF 33 78 */	mr r31, r6
/* 8053CBCC  28 00 00 00 */	cmplwi r0, 0
/* 8053CBD0  40 82 00 08 */	bne lbl_8053CBD8
/* 8053CBD4  4B FF FD F5 */	bl aNPC_look_target
lbl_8053CBD8:
/* 8053CBD8  88 1D 08 1A */	lbz r0, 0x81a(r29)
/* 8053CBDC  28 00 00 00 */	cmplwi r0, 0
/* 8053CBE0  41 82 00 24 */	beq lbl_8053CC04
/* 8053CBE4  88 1D 08 1B */	lbz r0, 0x81b(r29)
/* 8053CBE8  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 8053CBEC  38 9D 08 20 */	addi r4, r29, 0x820
/* 8053CBF0  98 1D 08 BF */	stb r0, 0x8bf(r29)
/* 8053CBF4  80 1D 08 1C */	lwz r0, 0x81c(r29)
/* 8053CBF8  90 1D 08 C0 */	stw r0, 0x8c0(r29)
/* 8053CBFC  4B E7 E2 C1 */	bl xyz_t_move
/* 8053CC00  48 00 00 0C */	b lbl_8053CC0C
lbl_8053CC04:
/* 8053CC04  38 00 00 00 */	li r0, 0
/* 8053CC08  98 1D 08 BF */	stb r0, 0x8bf(r29)
lbl_8053CC0C:
/* 8053CC0C  7F A3 EB 78 */	mr r3, r29
/* 8053CC10  4B FF FE A9 */	bl aNPC_check_condition_search_eye
/* 8053CC14  2C 03 00 01 */	cmpwi r3, 1
/* 8053CC18  40 82 00 74 */	bne lbl_8053CC8C
/* 8053CC1C  88 1D 08 BF */	lbz r0, 0x8bf(r29)
/* 8053CC20  2C 00 00 02 */	cmpwi r0, 2
/* 8053CC24  41 82 00 30 */	beq lbl_8053CC54
/* 8053CC28  40 80 00 44 */	bge lbl_8053CC6C
/* 8053CC2C  2C 00 00 01 */	cmpwi r0, 1
/* 8053CC30  40 80 00 08 */	bge lbl_8053CC38
/* 8053CC34  48 00 00 38 */	b lbl_8053CC6C
lbl_8053CC38:
/* 8053CC38  80 BD 08 C0 */	lwz r5, 0x8c0(r29)
/* 8053CC3C  7F A3 EB 78 */	mr r3, r29
/* 8053CC40  7F C6 F3 78 */	mr r6, r30
/* 8053CC44  38 85 00 48 */	addi r4, r5, 0x48
/* 8053CC48  38 A5 00 28 */	addi r5, r5, 0x28
/* 8053CC4C  4B FF FE 99 */	bl aNPC_search_eye_target_sub
/* 8053CC50  48 00 00 3C */	b lbl_8053CC8C
lbl_8053CC54:
/* 8053CC54  38 9D 08 C4 */	addi r4, r29, 0x8c4
/* 8053CC58  7F A3 EB 78 */	mr r3, r29
/* 8053CC5C  7F C6 F3 78 */	mr r6, r30
/* 8053CC60  7C 85 23 78 */	mr r5, r4
/* 8053CC64  4B FF FE 81 */	bl aNPC_search_eye_target_sub
/* 8053CC68  48 00 00 24 */	b lbl_8053CC8C
lbl_8053CC6C:
/* 8053CC6C  A8 9F 00 02 */	lha r4, 2(r31)
/* 8053CC70  38 7D 08 B4 */	addi r3, r29, 0x8b4
/* 8053CC74  A8 BD 08 B8 */	lha r5, 0x8b8(r29)
/* 8053CC78  4B E7 DE CD */	bl chase_angle
/* 8053CC7C  A8 9F 00 00 */	lha r4, 0(r31)
/* 8053CC80  38 7D 08 B6 */	addi r3, r29, 0x8b6
/* 8053CC84  A8 BD 08 BA */	lha r5, 0x8ba(r29)
/* 8053CC88  4B E7 DE BD */	bl chase_angle
lbl_8053CC8C:
/* 8053CC8C  38 00 00 00 */	li r0, 0
/* 8053CC90  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CC94  98 1D 08 1A */	stb r0, 0x81a(r29)
/* 8053CC98  4B B5 E2 89 */	bl func_8009AF20
/* 8053CC9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053CCA0  7C 08 03 A6 */	mtlr r0
/* 8053CCA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8053CCA8  4E 80 00 20 */	blr 
