lbl_8043A424:
/* 8043A424  C0 03 05 E8 */	lfs f0, 0x5e8(r3)
/* 8043A428  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043A42C  38 A4 42 48 */	addi r5, r4, lit_468@l /* 0x80644248@l */
/* 8043A430  3C 80 80 44 */	lis r4, mfish_aroana_dummy_process@ha /* 0x8043A44C@ha */
/* 8043A434  D0 03 05 F0 */	stfs f0, 0x5f0(r3)
/* 8043A438  38 04 A4 4C */	addi r0, r4, mfish_aroana_dummy_process@l /* 0x8043A44C@l */
/* 8043A43C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043A440  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 8043A444  90 03 00 34 */	stw r0, 0x34(r3)
/* 8043A448  4E 80 00 20 */	blr 
