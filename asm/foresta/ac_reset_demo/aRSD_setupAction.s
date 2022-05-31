lbl_804960D0:
/* 804960D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804960D4  7C 08 02 A6 */	mflr r0
/* 804960D8  3C C0 80 69 */	lis r6, process@ha /* 0x8068BA1C@ha */
/* 804960DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804960E0  54 A0 10 3A */	slwi r0, r5, 2
/* 804960E4  38 C6 BA 1C */	addi r6, r6, process@l /* 0x8068BA1C@l */
/* 804960E8  7C 06 00 2E */	lwzx r0, r6, r0
/* 804960EC  90 03 01 78 */	stw r0, 0x178(r3)
/* 804960F0  90 A3 01 74 */	stw r5, 0x174(r3)
/* 804960F4  4B FF FF A9 */	bl aRSD_init_proc
/* 804960F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804960FC  7C 08 03 A6 */	mtlr r0
/* 80496100  38 21 00 10 */	addi r1, r1, 0x10
/* 80496104  4E 80 00 20 */	blr 
