/*
 * Copyright 2013-2021 Robert Newgard
 *
 * This file is part of fcs.
 *
 * fcs is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * fcs is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with fcs.  If not, see <http://www.gnu.org/licenses/>.
 */

/** \file  fcs32_64.v
 *  \brief FCS functions for a 64-bit datapath.
 *
 *  Declares and defines the 64-bit functions
 *  for FCS, input byte reversal and top-level
 *  wrapper.
 */

function [31:0] fcs32_64_core(input [63:0] di, input [31:0] ci);
begin
	fcs32_64_core[0] =  ci[0] ^ ci[2] ^ ci[5] ^ ci[12] ^ ci[13] ^ ci[15] ^ ci[16] ^ ci[18] ^ ci[21] ^ ci[22] ^ ci[23] ^ ci[26] ^ ci[28] ^ ci[29] ^ ci[31] ^ di[0] ^ di[2] ^ di[3] ^ di[5] ^ di[8] ^ di[9] ^ di[10] ^ di[13] ^ di[15] ^ di[16] ^ di[18] ^ di[19] ^ di[26] ^ di[29] ^ di[31] ^ di[32] ^ di[33] ^ di[34] ^ di[35] ^ di[37] ^ di[38] ^ di[39] ^ di[47] ^ di[51] ^ di[53] ^ di[54] ^ di[57] ^ di[63];
	fcs32_64_core[1] =  ci[1] ^ ci[2] ^ ci[3] ^ ci[5] ^ ci[6] ^ ci[12] ^ ci[14] ^ ci[15] ^ ci[17] ^ ci[18] ^ ci[19] ^ ci[21] ^ ci[24] ^ ci[26] ^ ci[27] ^ ci[28] ^ ci[30] ^ ci[31] ^ di[0] ^ di[1] ^ di[3] ^ di[4] ^ di[5] ^ di[7] ^ di[10] ^ di[12] ^ di[13] ^ di[14] ^ di[16] ^ di[17] ^ di[19] ^ di[25] ^ di[26] ^ di[28] ^ di[29] ^ di[30] ^ di[35] ^ di[36] ^ di[39] ^ di[46] ^ di[47] ^ di[50] ^ di[51] ^ di[52] ^ di[54] ^ di[56] ^ di[57] ^ di[62] ^ di[63];
	fcs32_64_core[2] =  ci[0] ^ ci[3] ^ ci[4] ^ ci[5] ^ ci[6] ^ ci[7] ^ ci[12] ^ ci[19] ^ ci[20] ^ ci[21] ^ ci[23] ^ ci[25] ^ ci[26] ^ ci[27] ^ di[4] ^ di[5] ^ di[6] ^ di[8] ^ di[10] ^ di[11] ^ di[12] ^ di[19] ^ di[24] ^ di[25] ^ di[26] ^ di[27] ^ di[28] ^ di[31] ^ di[32] ^ di[33] ^ di[37] ^ di[39] ^ di[45] ^ di[46] ^ di[47] ^ di[49] ^ di[50] ^ di[54] ^ di[55] ^ di[56] ^ di[57] ^ di[61] ^ di[62] ^ di[63];
	fcs32_64_core[3] =  ci[0] ^ ci[1] ^ ci[4] ^ ci[5] ^ ci[6] ^ ci[7] ^ ci[8] ^ ci[13] ^ ci[20] ^ ci[21] ^ ci[22] ^ ci[24] ^ ci[26] ^ ci[27] ^ ci[28] ^ di[3] ^ di[4] ^ di[5] ^ di[7] ^ di[9] ^ di[10] ^ di[11] ^ di[18] ^ di[23] ^ di[24] ^ di[25] ^ di[26] ^ di[27] ^ di[30] ^ di[31] ^ di[32] ^ di[36] ^ di[38] ^ di[44] ^ di[45] ^ di[46] ^ di[48] ^ di[49] ^ di[53] ^ di[54] ^ di[55] ^ di[56] ^ di[60] ^ di[61] ^ di[62];
	fcs32_64_core[4] =  ci[1] ^ ci[6] ^ ci[7] ^ ci[8] ^ ci[9] ^ ci[12] ^ ci[13] ^ ci[14] ^ ci[15] ^ ci[16] ^ ci[18] ^ ci[25] ^ ci[26] ^ ci[27] ^ ci[31] ^ di[0] ^ di[4] ^ di[5] ^ di[6] ^ di[13] ^ di[15] ^ di[16] ^ di[17] ^ di[18] ^ di[19] ^ di[22] ^ di[23] ^ di[24] ^ di[25] ^ di[30] ^ di[32] ^ di[33] ^ di[34] ^ di[38] ^ di[39] ^ di[43] ^ di[44] ^ di[45] ^ di[48] ^ di[51] ^ di[52] ^ di[55] ^ di[57] ^ di[59] ^ di[60] ^ di[61] ^ di[63];
	fcs32_64_core[5] =  ci[5] ^ ci[7] ^ ci[8] ^ ci[9] ^ ci[10] ^ ci[12] ^ ci[14] ^ ci[17] ^ ci[18] ^ ci[19] ^ ci[21] ^ ci[22] ^ ci[23] ^ ci[27] ^ ci[29] ^ ci[31] ^ di[0] ^ di[2] ^ di[4] ^ di[8] ^ di[9] ^ di[10] ^ di[12] ^ di[13] ^ di[14] ^ di[17] ^ di[19] ^ di[21] ^ di[22] ^ di[23] ^ di[24] ^ di[26] ^ di[34] ^ di[35] ^ di[39] ^ di[42] ^ di[43] ^ di[44] ^ di[50] ^ di[53] ^ di[56] ^ di[57] ^ di[58] ^ di[59] ^ di[60] ^ di[62] ^ di[63];
	fcs32_64_core[6] =  ci[6] ^ ci[8] ^ ci[9] ^ ci[10] ^ ci[11] ^ ci[13] ^ ci[15] ^ ci[18] ^ ci[19] ^ ci[20] ^ ci[22] ^ ci[23] ^ ci[24] ^ ci[28] ^ ci[30] ^ di[1] ^ di[3] ^ di[7] ^ di[8] ^ di[9] ^ di[11] ^ di[12] ^ di[13] ^ di[16] ^ di[18] ^ di[20] ^ di[21] ^ di[22] ^ di[23] ^ di[25] ^ di[33] ^ di[34] ^ di[38] ^ di[41] ^ di[42] ^ di[43] ^ di[49] ^ di[52] ^ di[55] ^ di[56] ^ di[57] ^ di[58] ^ di[59] ^ di[61] ^ di[62];
	fcs32_64_core[7] =  ci[0] ^ ci[2] ^ ci[5] ^ ci[7] ^ ci[9] ^ ci[10] ^ ci[11] ^ ci[13] ^ ci[14] ^ ci[15] ^ ci[18] ^ ci[19] ^ ci[20] ^ ci[22] ^ ci[24] ^ ci[25] ^ ci[26] ^ ci[28] ^ di[3] ^ di[5] ^ di[6] ^ di[7] ^ di[9] ^ di[11] ^ di[12] ^ di[13] ^ di[16] ^ di[17] ^ di[18] ^ di[20] ^ di[21] ^ di[22] ^ di[24] ^ di[26] ^ di[29] ^ di[31] ^ di[34] ^ di[35] ^ di[38] ^ di[39] ^ di[40] ^ di[41] ^ di[42] ^ di[47] ^ di[48] ^ di[53] ^ di[55] ^ di[56] ^ di[58] ^ di[60] ^ di[61] ^ di[63];
	fcs32_64_core[8] =  ci[0] ^ ci[1] ^ ci[2] ^ ci[3] ^ ci[5] ^ ci[6] ^ ci[8] ^ ci[10] ^ ci[11] ^ ci[13] ^ ci[14] ^ ci[18] ^ ci[19] ^ ci[20] ^ ci[22] ^ ci[25] ^ ci[27] ^ ci[28] ^ ci[31] ^ di[0] ^ di[3] ^ di[4] ^ di[6] ^ di[9] ^ di[11] ^ di[12] ^ di[13] ^ di[17] ^ di[18] ^ di[20] ^ di[21] ^ di[23] ^ di[25] ^ di[26] ^ di[28] ^ di[29] ^ di[30] ^ di[31] ^ di[32] ^ di[35] ^ di[40] ^ di[41] ^ di[46] ^ di[51] ^ di[52] ^ di[53] ^ di[55] ^ di[59] ^ di[60] ^ di[62] ^ di[63];
	fcs32_64_core[9] =  ci[0] ^ ci[1] ^ ci[2] ^ ci[3] ^ ci[4] ^ ci[6] ^ ci[7] ^ ci[9] ^ ci[11] ^ ci[12] ^ ci[14] ^ ci[15] ^ ci[19] ^ ci[20] ^ ci[21] ^ ci[23] ^ ci[26] ^ ci[28] ^ ci[29] ^ di[2] ^ di[3] ^ di[5] ^ di[8] ^ di[10] ^ di[11] ^ di[12] ^ di[16] ^ di[17] ^ di[19] ^ di[20] ^ di[22] ^ di[24] ^ di[25] ^ di[27] ^ di[28] ^ di[29] ^ di[30] ^ di[31] ^ di[34] ^ di[39] ^ di[40] ^ di[45] ^ di[50] ^ di[51] ^ di[52] ^ di[54] ^ di[58] ^ di[59] ^ di[61] ^ di[62];
	fcs32_64_core[10] =  ci[0] ^ ci[1] ^ ci[3] ^ ci[4] ^ ci[7] ^ ci[8] ^ ci[10] ^ ci[18] ^ ci[20] ^ ci[23] ^ ci[24] ^ ci[26] ^ ci[27] ^ ci[28] ^ ci[30] ^ ci[31] ^ di[0] ^ di[1] ^ di[3] ^ di[4] ^ di[5] ^ di[7] ^ di[8] ^ di[11] ^ di[13] ^ di[21] ^ di[23] ^ di[24] ^ di[27] ^ di[28] ^ di[30] ^ di[31] ^ di[32] ^ di[34] ^ di[35] ^ di[37] ^ di[44] ^ di[47] ^ di[49] ^ di[50] ^ di[54] ^ di[58] ^ di[60] ^ di[61] ^ di[63];
	fcs32_64_core[11] =  ci[1] ^ ci[4] ^ ci[8] ^ ci[9] ^ ci[11] ^ ci[12] ^ ci[13] ^ ci[15] ^ ci[16] ^ ci[18] ^ ci[19] ^ ci[22] ^ ci[23] ^ ci[24] ^ ci[25] ^ ci[26] ^ ci[27] ^ di[4] ^ di[5] ^ di[6] ^ di[7] ^ di[8] ^ di[9] ^ di[12] ^ di[13] ^ di[15] ^ di[16] ^ di[18] ^ di[19] ^ di[20] ^ di[22] ^ di[23] ^ di[27] ^ di[30] ^ di[32] ^ di[35] ^ di[36] ^ di[37] ^ di[38] ^ di[39] ^ di[43] ^ di[46] ^ di[47] ^ di[48] ^ di[49] ^ di[51] ^ di[54] ^ di[59] ^ di[60] ^ di[62] ^ di[63];
	fcs32_64_core[12] =  ci[9] ^ ci[10] ^ ci[14] ^ ci[15] ^ ci[17] ^ ci[18] ^ ci[19] ^ ci[20] ^ ci[21] ^ ci[22] ^ ci[24] ^ ci[25] ^ ci[27] ^ ci[29] ^ ci[31] ^ di[0] ^ di[2] ^ di[4] ^ di[6] ^ di[7] ^ di[9] ^ di[10] ^ di[11] ^ di[12] ^ di[13] ^ di[14] ^ di[16] ^ di[17] ^ di[21] ^ di[22] ^ di[32] ^ di[33] ^ di[36] ^ di[39] ^ di[42] ^ di[45] ^ di[46] ^ di[48] ^ di[50] ^ di[51] ^ di[54] ^ di[57] ^ di[58] ^ di[59] ^ di[61] ^ di[62] ^ di[63];
	fcs32_64_core[13] =  ci[0] ^ ci[10] ^ ci[11] ^ ci[15] ^ ci[16] ^ ci[18] ^ ci[19] ^ ci[20] ^ ci[21] ^ ci[22] ^ ci[23] ^ ci[25] ^ ci[26] ^ ci[28] ^ ci[30] ^ di[1] ^ di[3] ^ di[5] ^ di[6] ^ di[8] ^ di[9] ^ di[10] ^ di[11] ^ di[12] ^ di[13] ^ di[15] ^ di[16] ^ di[20] ^ di[21] ^ di[31] ^ di[32] ^ di[35] ^ di[38] ^ di[41] ^ di[44] ^ di[45] ^ di[47] ^ di[49] ^ di[50] ^ di[53] ^ di[56] ^ di[57] ^ di[58] ^ di[60] ^ di[61] ^ di[62];
	fcs32_64_core[14] =  ci[0] ^ ci[1] ^ ci[11] ^ ci[12] ^ ci[16] ^ ci[17] ^ ci[19] ^ ci[20] ^ ci[21] ^ ci[22] ^ ci[23] ^ ci[24] ^ ci[26] ^ ci[27] ^ ci[29] ^ ci[31] ^ di[0] ^ di[2] ^ di[4] ^ di[5] ^ di[7] ^ di[8] ^ di[9] ^ di[10] ^ di[11] ^ di[12] ^ di[14] ^ di[15] ^ di[19] ^ di[20] ^ di[30] ^ di[31] ^ di[34] ^ di[37] ^ di[40] ^ di[43] ^ di[44] ^ di[46] ^ di[48] ^ di[49] ^ di[52] ^ di[55] ^ di[56] ^ di[57] ^ di[59] ^ di[60] ^ di[61];
	fcs32_64_core[15] =  ci[1] ^ ci[2] ^ ci[12] ^ ci[13] ^ ci[17] ^ ci[18] ^ ci[20] ^ ci[21] ^ ci[22] ^ ci[23] ^ ci[24] ^ ci[25] ^ ci[27] ^ ci[28] ^ ci[30] ^ di[1] ^ di[3] ^ di[4] ^ di[6] ^ di[7] ^ di[8] ^ di[9] ^ di[10] ^ di[11] ^ di[13] ^ di[14] ^ di[18] ^ di[19] ^ di[29] ^ di[30] ^ di[33] ^ di[36] ^ di[39] ^ di[42] ^ di[43] ^ di[45] ^ di[47] ^ di[48] ^ di[51] ^ di[54] ^ di[55] ^ di[56] ^ di[58] ^ di[59] ^ di[60];
	fcs32_64_core[16] =  ci[0] ^ ci[3] ^ ci[5] ^ ci[12] ^ ci[14] ^ ci[15] ^ ci[16] ^ ci[19] ^ ci[24] ^ ci[25] ^ di[6] ^ di[7] ^ di[12] ^ di[15] ^ di[16] ^ di[17] ^ di[19] ^ di[26] ^ di[28] ^ di[31] ^ di[33] ^ di[34] ^ di[37] ^ di[39] ^ di[41] ^ di[42] ^ di[44] ^ di[46] ^ di[50] ^ di[51] ^ di[55] ^ di[58] ^ di[59] ^ di[63];
	fcs32_64_core[17] =  ci[1] ^ ci[4] ^ ci[6] ^ ci[13] ^ ci[15] ^ ci[16] ^ ci[17] ^ ci[20] ^ ci[25] ^ ci[26] ^ di[5] ^ di[6] ^ di[11] ^ di[14] ^ di[15] ^ di[16] ^ di[18] ^ di[25] ^ di[27] ^ di[30] ^ di[32] ^ di[33] ^ di[36] ^ di[38] ^ di[40] ^ di[41] ^ di[43] ^ di[45] ^ di[49] ^ di[50] ^ di[54] ^ di[57] ^ di[58] ^ di[62];
	fcs32_64_core[18] =  ci[0] ^ ci[2] ^ ci[5] ^ ci[7] ^ ci[14] ^ ci[16] ^ ci[17] ^ ci[18] ^ ci[21] ^ ci[26] ^ ci[27] ^ di[4] ^ di[5] ^ di[10] ^ di[13] ^ di[14] ^ di[15] ^ di[17] ^ di[24] ^ di[26] ^ di[29] ^ di[31] ^ di[32] ^ di[35] ^ di[37] ^ di[39] ^ di[40] ^ di[42] ^ di[44] ^ di[48] ^ di[49] ^ di[53] ^ di[56] ^ di[57] ^ di[61];
	fcs32_64_core[19] =  ci[0] ^ ci[1] ^ ci[3] ^ ci[6] ^ ci[8] ^ ci[15] ^ ci[17] ^ ci[18] ^ ci[19] ^ ci[22] ^ ci[27] ^ ci[28] ^ di[3] ^ di[4] ^ di[9] ^ di[12] ^ di[13] ^ di[14] ^ di[16] ^ di[23] ^ di[25] ^ di[28] ^ di[30] ^ di[31] ^ di[34] ^ di[36] ^ di[38] ^ di[39] ^ di[41] ^ di[43] ^ di[47] ^ di[48] ^ di[52] ^ di[55] ^ di[56] ^ di[60];
	fcs32_64_core[20] =  ci[1] ^ ci[2] ^ ci[4] ^ ci[7] ^ ci[9] ^ ci[16] ^ ci[18] ^ ci[19] ^ ci[20] ^ ci[23] ^ ci[28] ^ ci[29] ^ di[2] ^ di[3] ^ di[8] ^ di[11] ^ di[12] ^ di[13] ^ di[15] ^ di[22] ^ di[24] ^ di[27] ^ di[29] ^ di[30] ^ di[33] ^ di[35] ^ di[37] ^ di[38] ^ di[40] ^ di[42] ^ di[46] ^ di[47] ^ di[51] ^ di[54] ^ di[55] ^ di[59];
	fcs32_64_core[21] =  ci[2] ^ ci[3] ^ ci[5] ^ ci[8] ^ ci[10] ^ ci[17] ^ ci[19] ^ ci[20] ^ ci[21] ^ ci[24] ^ ci[29] ^ ci[30] ^ di[1] ^ di[2] ^ di[7] ^ di[10] ^ di[11] ^ di[12] ^ di[14] ^ di[21] ^ di[23] ^ di[26] ^ di[28] ^ di[29] ^ di[32] ^ di[34] ^ di[36] ^ di[37] ^ di[39] ^ di[41] ^ di[45] ^ di[46] ^ di[50] ^ di[53] ^ di[54] ^ di[58];
	fcs32_64_core[22] =  ci[2] ^ ci[3] ^ ci[4] ^ ci[5] ^ ci[6] ^ ci[9] ^ ci[11] ^ ci[12] ^ ci[13] ^ ci[15] ^ ci[16] ^ ci[20] ^ ci[23] ^ ci[25] ^ ci[26] ^ ci[28] ^ ci[29] ^ ci[30] ^ di[1] ^ di[2] ^ di[3] ^ di[5] ^ di[6] ^ di[8] ^ di[11] ^ di[15] ^ di[16] ^ di[18] ^ di[19] ^ di[20] ^ di[22] ^ di[25] ^ di[26] ^ di[27] ^ di[28] ^ di[29] ^ di[32] ^ di[34] ^ di[36] ^ di[37] ^ di[39] ^ di[40] ^ di[44] ^ di[45] ^ di[47] ^ di[49] ^ di[51] ^ di[52] ^ di[54] ^ di[63];
	fcs32_64_core[23] =  ci[2] ^ ci[3] ^ ci[4] ^ ci[6] ^ ci[7] ^ ci[10] ^ ci[14] ^ ci[15] ^ ci[17] ^ ci[18] ^ ci[22] ^ ci[23] ^ ci[24] ^ ci[27] ^ ci[28] ^ ci[30] ^ di[1] ^ di[3] ^ di[4] ^ di[7] ^ di[8] ^ di[9] ^ di[13] ^ di[14] ^ di[16] ^ di[17] ^ di[21] ^ di[24] ^ di[25] ^ di[27] ^ di[28] ^ di[29] ^ di[32] ^ di[34] ^ di[36] ^ di[37] ^ di[43] ^ di[44] ^ di[46] ^ di[47] ^ di[48] ^ di[50] ^ di[54] ^ di[57] ^ di[62] ^ di[63];
	fcs32_64_core[24] =  ci[0] ^ ci[3] ^ ci[4] ^ ci[5] ^ ci[7] ^ ci[8] ^ ci[11] ^ ci[15] ^ ci[16] ^ ci[18] ^ ci[19] ^ ci[23] ^ ci[24] ^ ci[25] ^ ci[28] ^ ci[29] ^ ci[31] ^ di[0] ^ di[2] ^ di[3] ^ di[6] ^ di[7] ^ di[8] ^ di[12] ^ di[13] ^ di[15] ^ di[16] ^ di[20] ^ di[23] ^ di[24] ^ di[26] ^ di[27] ^ di[28] ^ di[31] ^ di[33] ^ di[35] ^ di[36] ^ di[42] ^ di[43] ^ di[45] ^ di[46] ^ di[47] ^ di[49] ^ di[53] ^ di[56] ^ di[61] ^ di[62];
	fcs32_64_core[25] =  ci[1] ^ ci[4] ^ ci[5] ^ ci[6] ^ ci[8] ^ ci[9] ^ ci[12] ^ ci[16] ^ ci[17] ^ ci[19] ^ ci[20] ^ ci[24] ^ ci[25] ^ ci[26] ^ ci[29] ^ ci[30] ^ di[1] ^ di[2] ^ di[5] ^ di[6] ^ di[7] ^ di[11] ^ di[12] ^ di[14] ^ di[15] ^ di[19] ^ di[22] ^ di[23] ^ di[25] ^ di[26] ^ di[27] ^ di[30] ^ di[32] ^ di[34] ^ di[35] ^ di[41] ^ di[42] ^ di[44] ^ di[45] ^ di[46] ^ di[48] ^ di[52] ^ di[55] ^ di[60] ^ di[61];
	fcs32_64_core[26] =  ci[6] ^ ci[7] ^ ci[9] ^ ci[10] ^ ci[12] ^ ci[15] ^ ci[16] ^ ci[17] ^ ci[20] ^ ci[22] ^ ci[23] ^ ci[25] ^ ci[27] ^ ci[28] ^ ci[29] ^ ci[30] ^ di[1] ^ di[2] ^ di[3] ^ di[4] ^ di[6] ^ di[8] ^ di[9] ^ di[11] ^ di[14] ^ di[15] ^ di[16] ^ di[19] ^ di[21] ^ di[22] ^ di[24] ^ di[25] ^ di[32] ^ di[35] ^ di[37] ^ di[38] ^ di[39] ^ di[40] ^ di[41] ^ di[43] ^ di[44] ^ di[45] ^ di[53] ^ di[57] ^ di[59] ^ di[60] ^ di[63];
	fcs32_64_core[27] =  ci[0] ^ ci[7] ^ ci[8] ^ ci[10] ^ ci[11] ^ ci[13] ^ ci[16] ^ ci[17] ^ ci[18] ^ ci[21] ^ ci[23] ^ ci[24] ^ ci[26] ^ ci[28] ^ ci[29] ^ ci[30] ^ ci[31] ^ di[0] ^ di[1] ^ di[2] ^ di[3] ^ di[5] ^ di[7] ^ di[8] ^ di[10] ^ di[13] ^ di[14] ^ di[15] ^ di[18] ^ di[20] ^ di[21] ^ di[23] ^ di[24] ^ di[31] ^ di[34] ^ di[36] ^ di[37] ^ di[38] ^ di[39] ^ di[40] ^ di[42] ^ di[43] ^ di[44] ^ di[52] ^ di[56] ^ di[58] ^ di[59] ^ di[62];
	fcs32_64_core[28] =  ci[1] ^ ci[8] ^ ci[9] ^ ci[11] ^ ci[12] ^ ci[14] ^ ci[17] ^ ci[18] ^ ci[19] ^ ci[22] ^ ci[24] ^ ci[25] ^ ci[27] ^ ci[29] ^ ci[30] ^ ci[31] ^ di[0] ^ di[1] ^ di[2] ^ di[4] ^ di[6] ^ di[7] ^ di[9] ^ di[12] ^ di[13] ^ di[14] ^ di[17] ^ di[19] ^ di[20] ^ di[22] ^ di[23] ^ di[30] ^ di[33] ^ di[35] ^ di[36] ^ di[37] ^ di[38] ^ di[39] ^ di[41] ^ di[42] ^ di[43] ^ di[51] ^ di[55] ^ di[57] ^ di[58] ^ di[61];
	fcs32_64_core[29] =  ci[2] ^ ci[9] ^ ci[10] ^ ci[12] ^ ci[13] ^ ci[15] ^ ci[18] ^ ci[19] ^ ci[20] ^ ci[23] ^ ci[25] ^ ci[26] ^ ci[28] ^ ci[30] ^ ci[31] ^ di[0] ^ di[1] ^ di[3] ^ di[5] ^ di[6] ^ di[8] ^ di[11] ^ di[12] ^ di[13] ^ di[16] ^ di[18] ^ di[19] ^ di[21] ^ di[22] ^ di[29] ^ di[32] ^ di[34] ^ di[35] ^ di[36] ^ di[37] ^ di[38] ^ di[40] ^ di[41] ^ di[42] ^ di[50] ^ di[54] ^ di[56] ^ di[57] ^ di[60];
	fcs32_64_core[30] =  ci[0] ^ ci[3] ^ ci[10] ^ ci[11] ^ ci[13] ^ ci[14] ^ ci[16] ^ ci[19] ^ ci[20] ^ ci[21] ^ ci[24] ^ ci[26] ^ ci[27] ^ ci[29] ^ ci[31] ^ di[0] ^ di[2] ^ di[4] ^ di[5] ^ di[7] ^ di[10] ^ di[11] ^ di[12] ^ di[15] ^ di[17] ^ di[18] ^ di[20] ^ di[21] ^ di[28] ^ di[31] ^ di[33] ^ di[34] ^ di[35] ^ di[36] ^ di[37] ^ di[39] ^ di[40] ^ di[41] ^ di[49] ^ di[53] ^ di[55] ^ di[56] ^ di[59];
	fcs32_64_core[31] =  ci[1] ^ ci[4] ^ ci[11] ^ ci[12] ^ ci[14] ^ ci[15] ^ ci[17] ^ ci[20] ^ ci[21] ^ ci[22] ^ ci[25] ^ ci[27] ^ ci[28] ^ ci[30] ^ di[1] ^ di[3] ^ di[4] ^ di[6] ^ di[9] ^ di[10] ^ di[11] ^ di[14] ^ di[16] ^ di[17] ^ di[19] ^ di[20] ^ di[27] ^ di[30] ^ di[32] ^ di[33] ^ di[34] ^ di[35] ^ di[36] ^ di[38] ^ di[39] ^ di[40] ^ di[48] ^ di[52] ^ di[54] ^ di[55] ^ di[58];
end
endfunction

function [63:0] fcs32_64_brev(input [63:0] di);
begin
	fcs32_64_brev[63:0] = {di[7:0], di[15:8], di[23:16], di[31:24], di[39:32], di[47:40], di[55:48], di[63:56]};
end
endfunction

function [31:0] fcs32_64(input [63:0] di, input [31:0] ci);
begin
	fcs32_64[31:0] = fcs32_64_core(fcs32_64_brev(di[63:0]), ci[31:0]);
end
endfunction
