lbl_80612FE0:
/* 80612FE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80612FE4  7C 08 02 A6 */	mflr r0
/* 80612FE8  7C E8 3B 78 */	mr r8, r7
/* 80612FEC  7C 89 23 78 */	mr r9, r4
/* 80612FF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80612FF4  38 00 00 00 */	li r0, 0
/* 80612FF8  38 E1 00 10 */	addi r7, r1, 0x10
/* 80612FFC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80613000  83 E3 00 00 */	lwz r31, 0(r3)
/* 80613004  81 43 00 04 */	lwz r10, 4(r3)
/* 80613008  81 83 00 08 */	lwz r12, 8(r3)
/* 8061300C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80613010  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80613014  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80613018  3D 63 00 02 */	addis r11, r3, 2
/* 8061301C  38 A0 00 00 */	li r5, 0
/* 80613020  90 81 00 14 */	stw r4, 0x14(r1)
/* 80613024  38 81 00 18 */	addi r4, r1, 0x18
/* 80613028  38 60 00 13 */	li r3, 0x13
/* 8061302C  91 41 00 1C */	stw r10, 0x1c(r1)
/* 80613030  39 40 00 00 */	li r10, 0
/* 80613034  93 E1 00 18 */	stw r31, 0x18(r1)
/* 80613038  91 81 00 20 */	stw r12, 0x20(r1)
/* 8061303C  90 01 00 08 */	stw r0, 8(r1)
/* 80613040  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80613044  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80613048  7D 89 03 A6 */	mtctr r12
/* 8061304C  4E 80 04 21 */	bctrl 
/* 80613050  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80613054  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80613058  7C 08 03 A6 */	mtlr r0
/* 8061305C  38 21 00 30 */	addi r1, r1, 0x30
/* 80613060  4E 80 00 20 */	blr 
