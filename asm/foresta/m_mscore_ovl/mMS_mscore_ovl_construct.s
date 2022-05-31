lbl_805E8B60:
/* 805E8B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E8B64  7C 08 02 A6 */	mflr r0
/* 805E8B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E8B6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E8B70  93 C1 00 08 */	stw r30, 8(r1)
/* 805E8B74  7C 7E 1B 78 */	mr r30, r3
/* 805E8B78  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E8B7C  80 1F 09 B0 */	lwz r0, 0x9b0(r31)
/* 805E8B80  28 00 00 00 */	cmplwi r0, 0
/* 805E8B84  40 82 00 2C */	bne lbl_805E8BB0
/* 805E8B88  3C 60 81 21 */	lis r3, mscore_ovl_data@ha /* 0x812125C0@ha */
/* 805E8B8C  38 80 00 28 */	li r4, 0x28
/* 805E8B90  38 63 25 C0 */	addi r3, r3, mscore_ovl_data@l /* 0x812125C0@l */
/* 805E8B94  38 A0 00 00 */	li r5, 0
/* 805E8B98  4B DD 1E B1 */	bl mem_clear
/* 805E8B9C  3C 80 81 21 */	lis r4, mscore_ovl_data@ha /* 0x812125C0@ha */
/* 805E8BA0  38 7F 02 94 */	addi r3, r31, 0x294
/* 805E8BA4  38 04 25 C0 */	addi r0, r4, mscore_ovl_data@l /* 0x812125C0@l */
/* 805E8BA8  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 805E8BAC  4B FF F3 AD */	bl mMS_MScore_draw_init
lbl_805E8BB0:
/* 805E8BB0  7F C3 F3 78 */	mr r3, r30
/* 805E8BB4  4B FF FF 39 */	bl mMS_mscore_ovl_init
/* 805E8BB8  7F C3 F3 78 */	mr r3, r30
/* 805E8BBC  4B FF FF 11 */	bl mMS_mscore_ovl_set_proc
/* 805E8BC0  38 60 00 02 */	li r3, 2
/* 805E8BC4  4B D9 3B CD */	bl mBGMPsComp_pause
/* 805E8BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E8BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E8BD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E8BD4  7C 08 03 A6 */	mtlr r0
/* 805E8BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 805E8BDC  4E 80 00 20 */	blr 
