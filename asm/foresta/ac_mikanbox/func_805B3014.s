lbl_805B3014:
/* 805B3014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3018  7C 08 02 A6 */	mflr r0
/* 805B301C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3020  39 61 00 20 */	addi r11, r1, 0x20
/* 805B3024  4B AE 7E B1 */	bl func_8009AED4
/* 805B3028  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B302C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B3030  3C 84 00 02 */	addis r4, r4, 2
/* 805B3034  80 04 60 E4 */	lwz r0, 0x60e4(r4)
/* 805B3038  28 00 00 00 */	cmplwi r0, 0
/* 805B303C  41 82 00 54 */	beq lbl_805B3090
/* 805B3040  3C 80 80 6C */	lis r4, page_table@ha /* 0x806C5A7C@ha */
/* 805B3044  3C A0 81 20 */	lis r5, totakeke_str@ha /* 0x811FA0D0@ha */
/* 805B3048  38 84 5A 7C */	addi r4, r4, page_table@l /* 0x806C5A7C@l */
/* 805B304C  3B A0 00 00 */	li r29, 0
/* 805B3050  7C 64 18 AE */	lbzx r3, r4, r3
/* 805B3054  38 05 A0 D0 */	addi r0, r5, totakeke_str@l /* 0x811FA0D0@l */
/* 805B3058  7C 1F 03 78 */	mr r31, r0
/* 805B305C  3B C3 07 7B */	addi r30, r3, 0x77b
lbl_805B3060:
/* 805B3060  7F E3 FB 78 */	mr r3, r31
/* 805B3064  7F C5 F3 78 */	mr r5, r30
/* 805B3068  38 80 00 19 */	li r4, 0x19
/* 805B306C  4B E3 BC 61 */	bl mString_Load_StringFromRom
/* 805B3070  3B DE 00 01 */	addi r30, r30, 1
/* 805B3074  2C 1E 07 FE */	cmpwi r30, 0x7fe
/* 805B3078  40 81 00 08 */	ble lbl_805B3080
/* 805B307C  3B C0 07 FE */	li r30, 0x7fe
lbl_805B3080:
/* 805B3080  3B BD 00 01 */	addi r29, r29, 1
/* 805B3084  3B FF 00 19 */	addi r31, r31, 0x19
/* 805B3088  2C 1D 00 0A */	cmpwi r29, 0xa
/* 805B308C  41 80 FF D4 */	blt lbl_805B3060
lbl_805B3090:
/* 805B3090  39 61 00 20 */	addi r11, r1, 0x20
/* 805B3094  4B AE 7E 8D */	bl func_8009AF20
/* 805B3098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B309C  7C 08 03 A6 */	mtlr r0
/* 805B30A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805B30A4  4E 80 00 20 */	blr 
