lbl_805E9C74:
/* 805E9C74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E9C78  7C 08 02 A6 */	mflr r0
/* 805E9C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E9C80  39 61 00 20 */	addi r11, r1, 0x20
/* 805E9C84  4B AB 12 4D */	bl func_8009AED0
/* 805E9C88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E9C8C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805E9C90  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805E9C94  38 A0 00 08 */	li r5, 8
/* 805E9C98  3F C3 00 02 */	addis r30, r3, 2
/* 805E9C9C  83 A6 09 D8 */	lwz r29, 0x9d8(r6)
/* 805E9CA0  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 805E9CA4  38 7D 11 20 */	addi r3, r29, 0x1120
/* 805E9CA8  38 84 23 40 */	addi r4, r4, 0x2340
/* 805E9CAC  4B A7 33 71 */	bl func_8005D01C
/* 805E9CB0  3B 80 00 00 */	li r28, 0
/* 805E9CB4  3B E0 00 00 */	li r31, 0
lbl_805E9CB8:
/* 805E9CB8  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 805E9CBC  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805E9CC0  38 9F 00 20 */	addi r4, r31, 0x20
/* 805E9CC4  7C 60 1A 14 */	add r3, r0, r3
/* 805E9CC8  7C 9D 22 14 */	add r4, r29, r4
/* 805E9CCC  4B DD FF 05 */	bl mNW_CopyOriginalTextureClass
/* 805E9CD0  3B 9C 00 01 */	addi r28, r28, 1
/* 805E9CD4  3B FF 02 20 */	addi r31, r31, 0x220
/* 805E9CD8  2C 1C 00 08 */	cmpwi r28, 8
/* 805E9CDC  41 80 FF DC */	blt lbl_805E9CB8
/* 805E9CE0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E9CE4  4B AB 12 39 */	bl func_8009AF1C
/* 805E9CE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E9CEC  7C 08 03 A6 */	mtlr r0
/* 805E9CF0  38 21 00 20 */	addi r1, r1, 0x20
/* 805E9CF4  4E 80 00 20 */	blr 
