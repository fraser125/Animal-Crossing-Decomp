lbl_805ECF94:
/* 805ECF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ECF98  7C 08 02 A6 */	mflr r0
/* 805ECF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ECFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805ECFA4  93 C1 00 08 */	stw r30, 8(r1)
/* 805ECFA8  7C 7E 1B 78 */	mr r30, r3
/* 805ECFAC  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805ECFB0  80 1F 09 AC */	lwz r0, 0x9ac(r31)
/* 805ECFB4  28 00 00 00 */	cmplwi r0, 0
/* 805ECFB8  40 82 00 24 */	bne lbl_805ECFDC
/* 805ECFBC  3C 60 81 21 */	lis r3, rp_ovl_data@ha /* 0x812126E0@ha */
/* 805ECFC0  38 80 00 18 */	li r4, 0x18
/* 805ECFC4  38 63 26 E0 */	addi r3, r3, rp_ovl_data@l /* 0x812126E0@l */
/* 805ECFC8  38 A0 00 00 */	li r5, 0
/* 805ECFCC  4B DC DA 7D */	bl mem_clear
/* 805ECFD0  3C 60 81 21 */	lis r3, rp_ovl_data@ha /* 0x812126E0@ha */
/* 805ECFD4  38 03 26 E0 */	addi r0, r3, rp_ovl_data@l /* 0x812126E0@l */
/* 805ECFD8  90 1F 09 AC */	stw r0, 0x9ac(r31)
lbl_805ECFDC:
/* 805ECFDC  7F C3 F3 78 */	mr r3, r30
/* 805ECFE0  4B FF FE A9 */	bl mRP_repay_ovl_init
/* 805ECFE4  7F C3 F3 78 */	mr r3, r30
/* 805ECFE8  4B FF FE 81 */	bl mRP_repay_ovl_set_proc
/* 805ECFEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ECFF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805ECFF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805ECFF8  7C 08 03 A6 */	mtlr r0
/* 805ECFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 805ED000  4E 80 00 20 */	blr 
