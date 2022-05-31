lbl_804231E4:
/* 804231E4  3C 60 81 1D */	lis r3, aFD_position_offset@ha /* 0x811CBD58@ha */
/* 804231E8  D0 23 BD 58 */	stfs f1, aFD_position_offset@l(r3)  /* 0x811CBD58@l */
/* 804231EC  4E 80 00 20 */	blr 
