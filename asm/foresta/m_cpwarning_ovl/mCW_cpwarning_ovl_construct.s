lbl_805CF2E8:
/* 805CF2E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CF2EC  7C 08 02 A6 */	mflr r0
/* 805CF2F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CF2F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805CF2F8  4B AC BB DD */	bl func_8009AED4
/* 805CF2FC  7C 7D 1B 78 */	mr r29, r3
/* 805CF300  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805CF304  80 1F 09 C4 */	lwz r0, 0x9c4(r31)
/* 805CF308  3B DF 05 64 */	addi r30, r31, 0x564
/* 805CF30C  28 00 00 00 */	cmplwi r0, 0
/* 805CF310  40 82 00 24 */	bne lbl_805CF334
/* 805CF314  3C 60 81 21 */	lis r3, cpwarning_ovl_data@ha /* 0x81210FB0@ha */
/* 805CF318  38 80 00 10 */	li r4, 0x10
/* 805CF31C  38 63 0F B0 */	addi r3, r3, cpwarning_ovl_data@l /* 0x81210FB0@l */
/* 805CF320  38 A0 00 00 */	li r5, 0
/* 805CF324  4B DE B7 25 */	bl mem_clear
/* 805CF328  3C 60 81 21 */	lis r3, cpwarning_ovl_data@ha /* 0x81210FB0@ha */
/* 805CF32C  38 03 0F B0 */	addi r0, r3, cpwarning_ovl_data@l /* 0x81210FB0@l */
/* 805CF330  90 1F 09 C4 */	stw r0, 0x9c4(r31)
lbl_805CF334:
/* 805CF334  7F A3 EB 78 */	mr r3, r29
/* 805CF338  7F C4 F3 78 */	mr r4, r30
/* 805CF33C  4B FF FF 31 */	bl mCW_cpwarning_ovl_init
/* 805CF340  7F A3 EB 78 */	mr r3, r29
/* 805CF344  4B FF FF 09 */	bl mCW_cpwarning_ovl_set_proc
/* 805CF348  39 61 00 20 */	addi r11, r1, 0x20
/* 805CF34C  4B AC BB D5 */	bl func_8009AF20
/* 805CF350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CF354  7C 08 03 A6 */	mtlr r0
/* 805CF358  38 21 00 20 */	addi r1, r1, 0x20
/* 805CF35C  4E 80 00 20 */	blr 
