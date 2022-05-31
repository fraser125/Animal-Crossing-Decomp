lbl_805C3764:
/* 805C3764  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C3768  7C 08 02 A6 */	mflr r0
/* 805C376C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C3770  39 61 00 20 */	addi r11, r1, 0x20
/* 805C3774  4B AD 77 61 */	bl func_8009AED4
/* 805C3778  7C 7D 1B 78 */	mr r29, r3
/* 805C377C  3B C0 00 00 */	li r30, 0
/* 805C3780  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805C3784  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 805C3788  28 00 00 00 */	cmplwi r0, 0
/* 805C378C  40 82 00 28 */	bne lbl_805C37B4
/* 805C3790  3C 60 81 21 */	lis r3, adrs_ovl_data@ha /* 0x8120FFF8@ha */
/* 805C3794  38 80 01 E8 */	li r4, 0x1e8
/* 805C3798  38 63 FF F8 */	addi r3, r3, adrs_ovl_data@l /* 0x8120FFF8@l */
/* 805C379C  38 A0 00 00 */	li r5, 0
/* 805C37A0  4B DF 72 A9 */	bl mem_clear
/* 805C37A4  3C 60 81 21 */	lis r3, adrs_ovl_data@ha /* 0x8120FFF8@ha */
/* 805C37A8  3B C0 00 01 */	li r30, 1
/* 805C37AC  38 03 FF F8 */	addi r0, r3, adrs_ovl_data@l /* 0x8120FFF8@l */
/* 805C37B0  90 1F 09 94 */	stw r0, 0x994(r31)
lbl_805C37B4:
/* 805C37B4  7F A3 EB 78 */	mr r3, r29
/* 805C37B8  4B FF FE 81 */	bl mAD_address_ovl_init
/* 805C37BC  7F A3 EB 78 */	mr r3, r29
/* 805C37C0  4B FF FE 59 */	bl mAD_address_ovl_set_proc
/* 805C37C4  2C 1E 00 00 */	cmpwi r30, 0
/* 805C37C8  41 82 00 0C */	beq lbl_805C37D4
/* 805C37CC  7F A3 EB 78 */	mr r3, r29
/* 805C37D0  4B FF F4 D1 */	bl mAD_address_draw_init
lbl_805C37D4:
/* 805C37D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C37D8  4B AD 77 49 */	bl func_8009AF20
/* 805C37DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C37E0  7C 08 03 A6 */	mtlr r0
/* 805C37E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805C37E8  4E 80 00 20 */	blr 
