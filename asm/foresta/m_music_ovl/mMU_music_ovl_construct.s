lbl_805E95F0:
/* 805E95F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E95F4  7C 08 02 A6 */	mflr r0
/* 805E95F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E95FC  39 61 00 20 */	addi r11, r1, 0x20
/* 805E9600  4B AB 18 D5 */	bl func_8009AED4
/* 805E9604  7C 7D 1B 78 */	mr r29, r3
/* 805E9608  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E960C  80 1F 09 D0 */	lwz r0, 0x9d0(r31)
/* 805E9610  3B DF 06 3C */	addi r30, r31, 0x63c
/* 805E9614  28 00 00 00 */	cmplwi r0, 0
/* 805E9618  40 82 00 2C */	bne lbl_805E9644
/* 805E961C  3C 60 81 21 */	lis r3, music_ovl_data@ha /* 0x812125E8@ha */
/* 805E9620  38 80 00 1C */	li r4, 0x1c
/* 805E9624  38 63 25 E8 */	addi r3, r3, music_ovl_data@l /* 0x812125E8@l */
/* 805E9628  38 A0 00 00 */	li r5, 0
/* 805E962C  4B DD 14 1D */	bl mem_clear
/* 805E9630  3C 80 81 21 */	lis r4, music_ovl_data@ha /* 0x812125E8@ha */
/* 805E9634  7F C3 F3 78 */	mr r3, r30
/* 805E9638  38 04 25 E8 */	addi r0, r4, music_ovl_data@l /* 0x812125E8@l */
/* 805E963C  90 1F 09 D0 */	stw r0, 0x9d0(r31)
/* 805E9640  4B FF FF 0D */	bl mMU_music_draw_init
lbl_805E9644:
/* 805E9644  7F A3 EB 78 */	mr r3, r29
/* 805E9648  7F C4 F3 78 */	mr r4, r30
/* 805E964C  4B FF FF 71 */	bl mMU_music_ovl_init
/* 805E9650  7F A3 EB 78 */	mr r3, r29
/* 805E9654  4B FF FF 05 */	bl mMU_music_ovl_set_proc
/* 805E9658  39 61 00 20 */	addi r11, r1, 0x20
/* 805E965C  4B AB 18 C5 */	bl func_8009AF20
/* 805E9660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E9664  7C 08 03 A6 */	mtlr r0
/* 805E9668  38 21 00 20 */	addi r1, r1, 0x20
/* 805E966C  4E 80 00 20 */	blr 
