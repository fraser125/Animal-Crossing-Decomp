lbl_80566884:
/* 80566884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566888  7C 08 02 A6 */	mflr r0
/* 8056688C  38 60 00 04 */	li r3, 4
/* 80566890  38 80 00 09 */	li r4, 9
/* 80566894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056689C  93 C1 00 08 */	stw r30, 8(r1)
/* 805668A0  4B E3 1B DD */	bl mDemo_Get_OrderValue
/* 805668A4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805668A8  38 60 00 00 */	li r3, 0
/* 805668AC  41 82 00 9C */	beq lbl_80566948
/* 805668B0  3B C0 00 00 */	li r30, 0
/* 805668B4  4B E1 CC 8D */	bl func_80383540
/* 805668B8  4B E1 D2 B5 */	bl mChoice_Get_ChoseNum
/* 805668BC  2C 03 00 01 */	cmpwi r3, 1
/* 805668C0  41 82 00 28 */	beq lbl_805668E8
/* 805668C4  40 80 00 10 */	bge lbl_805668D4
/* 805668C8  2C 03 00 00 */	cmpwi r3, 0
/* 805668CC  40 80 00 14 */	bge lbl_805668E0
/* 805668D0  48 00 00 24 */	b lbl_805668F4
lbl_805668D4:
/* 805668D4  2C 03 00 03 */	cmpwi r3, 3
/* 805668D8  40 80 00 1C */	bge lbl_805668F4
/* 805668DC  48 00 00 14 */	b lbl_805668F0
lbl_805668E0:
/* 805668E0  3B C0 00 00 */	li r30, 0
/* 805668E4  48 00 00 10 */	b lbl_805668F4
lbl_805668E8:
/* 805668E8  3B C0 00 01 */	li r30, 1
/* 805668EC  48 00 00 08 */	b lbl_805668F4
lbl_805668F0:
/* 805668F0  3B C0 00 02 */	li r30, 2
lbl_805668F4:
/* 805668F4  3C 60 80 6C */	lis r3, sound_mode@ha /* 0x806BE35C@ha */
/* 805668F8  3B E3 E3 5C */	addi r31, r3, sound_mode@l /* 0x806BE35C@l */
/* 805668FC  7C 1F F0 AE */	lbzx r0, r31, r30
/* 80566900  20 60 00 01 */	subfic r3, r0, 1
/* 80566904  30 03 FF FF */	addic r0, r3, -1
/* 80566908  7C 60 19 10 */	subfe r3, r0, r3
/* 8056690C  4B B1 6E 89 */	bl OSSetSoundMode
/* 80566910  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80566914  3C 60 80 6C */	lis r3, aNPS_sound_mode@ha /* 0x806BE314@ha */
/* 80566918  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056691C  7C 1F F0 AE */	lbzx r0, r31, r30
/* 80566920  3C 84 00 02 */	addis r4, r4, 2
/* 80566924  38 63 E3 14 */	addi r3, r3, aNPS_sound_mode@l /* 0x806BE314@l */
/* 80566928  98 04 0F 10 */	stb r0, 0xf10(r4)
/* 8056692C  7C 63 F0 AE */	lbzx r3, r3, r30
/* 80566930  48 0C 76 C1 */	bl sAdo_SetOutMode
/* 80566934  38 60 00 04 */	li r3, 4
/* 80566938  38 80 00 09 */	li r4, 9
/* 8056693C  38 A0 00 00 */	li r5, 0
/* 80566940  4B E3 1A F9 */	bl mDemo_Set_OrderValue
/* 80566944  38 60 00 01 */	li r3, 1
lbl_80566948:
/* 80566948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056694C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566950  83 C1 00 08 */	lwz r30, 8(r1)
/* 80566954  7C 08 03 A6 */	mtlr r0
/* 80566958  38 21 00 10 */	addi r1, r1, 0x10
/* 8056695C  4E 80 00 20 */	blr 
