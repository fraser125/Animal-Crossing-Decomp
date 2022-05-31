lbl_804A76AC:
/* 804A76AC  3C A0 80 69 */	lis r5, process@ha /* 0x8068E8EC@ha */
/* 804A76B0  54 80 10 3A */	slwi r0, r4, 2
/* 804A76B4  38 A5 E8 EC */	addi r5, r5, process@l /* 0x8068E8EC@l */
/* 804A76B8  7C 05 00 2E */	lwzx r0, r5, r0
/* 804A76BC  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 804A76C0  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 804A76C4  90 83 01 C0 */	stw r4, 0x1c0(r3)
/* 804A76C8  4E 80 00 20 */	blr 
