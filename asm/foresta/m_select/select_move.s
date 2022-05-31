lbl_80628DA0:
/* 80628DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80628DA4  7C 08 02 A6 */	mflr r0
/* 80628DA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80628DAC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80628DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80628DB4  3C 84 00 02 */	addis r4, r4, 2
/* 80628DB8  80 04 66 A4 */	lwz r0, 0x66a4(r4)
/* 80628DBC  2C 00 00 00 */	cmpwi r0, 0
/* 80628DC0  41 80 00 0C */	blt lbl_80628DCC
/* 80628DC4  4B FF F1 8D */	bl select_pass
/* 80628DC8  48 00 00 20 */	b lbl_80628DE8
lbl_80628DCC:
/* 80628DCC  80 03 02 00 */	lwz r0, 0x200(r3)
/* 80628DD0  3C 80 80 6D */	lis r4, process_881@ha /* 0x806D426C@ha */
/* 80628DD4  38 84 42 6C */	addi r4, r4, process_881@l /* 0x806D426C@l */
/* 80628DD8  54 00 10 3A */	slwi r0, r0, 2
/* 80628DDC  7D 84 00 2E */	lwzx r12, r4, r0
/* 80628DE0  7D 89 03 A6 */	mtctr r12
/* 80628DE4  4E 80 04 21 */	bctrl 
lbl_80628DE8:
/* 80628DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80628DEC  7C 08 03 A6 */	mtlr r0
/* 80628DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80628DF4  4E 80 00 20 */	blr 
