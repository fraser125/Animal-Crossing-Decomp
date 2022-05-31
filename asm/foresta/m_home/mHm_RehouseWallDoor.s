lbl_803B3140:
/* 803B3140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B3144  7C 08 02 A6 */	mflr r0
/* 803B3148  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B314C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B3150  4B CE 7D 85 */	bl func_8009AED4
/* 803B3154  2C 04 00 01 */	cmpwi r4, 1
/* 803B3158  7C 7D 1B 78 */	mr r29, r3
/* 803B315C  41 80 00 0C */	blt lbl_803B3168
/* 803B3160  2C 04 00 05 */	cmpwi r4, 5
/* 803B3164  41 80 00 08 */	blt lbl_803B316C
lbl_803B3168:
/* 803B3168  38 80 00 01 */	li r4, 1
lbl_803B316C:
/* 803B316C  3C 60 80 65 */	lis r3, room_size@ha /* 0x80655228@ha */
/* 803B3170  54 80 10 3A */	slwi r0, r4, 2
/* 803B3174  38 A3 52 28 */	addi r5, r3, room_size@l /* 0x80655228@l */
/* 803B3178  38 7D 00 38 */	addi r3, r29, 0x38
/* 803B317C  7C 85 02 14 */	add r4, r5, r0
/* 803B3180  7F E5 00 2E */	lwzx r31, r5, r0
/* 803B3184  83 C4 FF FC */	lwz r30, -4(r4)
/* 803B3188  7F C4 F3 78 */	mr r4, r30
/* 803B318C  4B FF FF 6D */	bl mHm_EraseWallDoor
/* 803B3190  7F C4 F3 78 */	mr r4, r30
/* 803B3194  38 7D 02 60 */	addi r3, r29, 0x260
/* 803B3198  4B FF FF 61 */	bl mHm_EraseWallDoor
/* 803B319C  7F E4 FB 78 */	mr r4, r31
/* 803B31A0  38 7D 00 38 */	addi r3, r29, 0x38
/* 803B31A4  4B FF FF 79 */	bl mHm_SetWallDoor
/* 803B31A8  7F E4 FB 78 */	mr r4, r31
/* 803B31AC  38 7D 02 60 */	addi r3, r29, 0x260
/* 803B31B0  4B FF FF 6D */	bl mHm_SetWallDoor
/* 803B31B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803B31B8  4B CE 7D 69 */	bl func_8009AF20
/* 803B31BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B31C0  7C 08 03 A6 */	mtlr r0
/* 803B31C4  38 21 00 20 */	addi r1, r1, 0x20
/* 803B31C8  4E 80 00 20 */	blr 
