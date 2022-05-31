lbl_803C07C4:
/* 803C07C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C07C8  7C 08 02 A6 */	mflr r0
/* 803C07CC  3C C0 81 17 */	lis r6, data_81169FB8@ha /* 0x81169FB8@ha */
/* 803C07D0  3D 00 81 17 */	lis r8, Msg_rom_start@ha /* 0x81169FBC@ha */
/* 803C07D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C07D8  39 26 9F B8 */	addi r9, r6, data_81169FB8@l /* 0x81169FB8@l */
/* 803C07DC  7C 86 23 78 */	mr r6, r4
/* 803C07E0  38 88 9F BC */	addi r4, r8, Msg_rom_start@l /* 0x81169FBC@l */
/* 803C07E4  7C 60 1B 78 */	mr r0, r3
/* 803C07E8  80 69 00 00 */	lwz r3, 0(r9)
/* 803C07EC  7C A7 2B 78 */	mr r7, r5
/* 803C07F0  80 84 00 00 */	lwz r4, 0(r4)
/* 803C07F4  7C 05 03 78 */	mr r5, r0
/* 803C07F8  4B FF FF 01 */	bl mMsg_Get_BodyParam
/* 803C07FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0800  7C 08 03 A6 */	mtlr r0
/* 803C0804  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0808  4E 80 00 20 */	blr 
