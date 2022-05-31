lbl_8042BF30:
/* 8042BF30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BF34  7C 08 02 A6 */	mflr r0
/* 8042BF38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042BF3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042BF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BF44  3C 63 00 02 */	addis r3, r3, 2
/* 8042BF48  38 63 61 20 */	addi r3, r3, 0x6120
/* 8042BF4C  4B FC 16 F1 */	bl mSC_LightHouse_get_period
/* 8042BF50  2C 03 00 01 */	cmpwi r3, 1
/* 8042BF54  41 82 00 08 */	beq lbl_8042BF5C
/* 8042BF58  48 00 00 0C */	b lbl_8042BF64
lbl_8042BF5C:
/* 8042BF5C  38 60 00 01 */	li r3, 1
/* 8042BF60  48 00 00 08 */	b lbl_8042BF68
lbl_8042BF64:
/* 8042BF64  38 60 00 00 */	li r3, 0
lbl_8042BF68:
/* 8042BF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BF6C  7C 08 03 A6 */	mtlr r0
/* 8042BF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BF74  4E 80 00 20 */	blr 
